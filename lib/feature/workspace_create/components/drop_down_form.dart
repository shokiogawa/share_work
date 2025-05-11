import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally_worship/core/data/base_select_model.dart';


class DropDownFormField<T extends BaseSelectModel> extends HookConsumerWidget {
  const DropDownFormField({
    super.key,
    required this.value,
    required this.onChanged,
    required this.asyncValue,
    required this.displayColumnName,
    this.hint,
    this.labelText,
    this.validator,
  });
  final T? value;
  final String? hint;
  final String? labelText;
  final String displayColumnName;
  final ValueChanged<T?> onChanged;
  final FormFieldValidator<T>? validator;
  final AsyncValue<List<T>> asyncValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return asyncValue.when(
      data: (data) {
        return DropdownButtonFormField<T>(
          value: value,
          items: data.map((item) {
            final mapItem = item.toJson();
            final name = mapItem[displayColumnName] as String;
            return DropdownMenuItem<T>(
              value: item,
              child: Text(name),
            );
          }).toList(),
          onChanged: onChanged,
          validator: validator,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hint,
            border: const OutlineInputBorder(),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
