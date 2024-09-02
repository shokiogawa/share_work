// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'worship_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorshipCard _$WorshipCardFromJson(Map<String, dynamic> json) {
  return _WorshipCard.fromJson(json);
}

/// @nodoc
mixin _$WorshipCard {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_shrine')
  int? get idShrine => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_current')
  int? get isCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorshipCardCopyWith<WorshipCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorshipCardCopyWith<$Res> {
  factory $WorshipCardCopyWith(
          WorshipCard value, $Res Function(WorshipCard) then) =
      _$WorshipCardCopyWithImpl<$Res, WorshipCard>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_shrine') int? idShrine,
      int? number,
      String? comment,
      @JsonKey(name: 'is_current') int? isCurrent,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$WorshipCardCopyWithImpl<$Res, $Val extends WorshipCard>
    implements $WorshipCardCopyWith<$Res> {
  _$WorshipCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idShrine = freezed,
    Object? number = freezed,
    Object? comment = freezed,
    Object? isCurrent = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idShrine: freezed == idShrine
          ? _value.idShrine
          : idShrine // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorshipCardImplCopyWith<$Res>
    implements $WorshipCardCopyWith<$Res> {
  factory _$$WorshipCardImplCopyWith(
          _$WorshipCardImpl value, $Res Function(_$WorshipCardImpl) then) =
      __$$WorshipCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_shrine') int? idShrine,
      int? number,
      String? comment,
      @JsonKey(name: 'is_current') int? isCurrent,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$WorshipCardImplCopyWithImpl<$Res>
    extends _$WorshipCardCopyWithImpl<$Res, _$WorshipCardImpl>
    implements _$$WorshipCardImplCopyWith<$Res> {
  __$$WorshipCardImplCopyWithImpl(
      _$WorshipCardImpl _value, $Res Function(_$WorshipCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idShrine = freezed,
    Object? number = freezed,
    Object? comment = freezed,
    Object? isCurrent = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WorshipCardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idShrine: freezed == idShrine
          ? _value.idShrine
          : idShrine // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrent: freezed == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorshipCardImpl extends _WorshipCard {
  const _$WorshipCardImpl(
      {this.id,
      @JsonKey(name: 'id_shrine') this.idShrine,
      this.number,
      this.comment,
      @JsonKey(name: 'is_current') this.isCurrent,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$WorshipCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorshipCardImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_shrine')
  final int? idShrine;
  @override
  final int? number;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'is_current')
  final int? isCurrent;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'WorshipCard(id: $id, idShrine: $idShrine, number: $number, comment: $comment, isCurrent: $isCurrent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorshipCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idShrine, idShrine) ||
                other.idShrine == idShrine) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, idShrine, number, comment,
      isCurrent, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorshipCardImplCopyWith<_$WorshipCardImpl> get copyWith =>
      __$$WorshipCardImplCopyWithImpl<_$WorshipCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorshipCardImplToJson(
      this,
    );
  }
}

abstract class _WorshipCard extends WorshipCard {
  const factory _WorshipCard(
          {final int? id,
          @JsonKey(name: 'id_shrine') final int? idShrine,
          final int? number,
          final String? comment,
          @JsonKey(name: 'is_current') final int? isCurrent,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$WorshipCardImpl;
  const _WorshipCard._() : super._();

  factory _WorshipCard.fromJson(Map<String, dynamic> json) =
      _$WorshipCardImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'id_shrine')
  int? get idShrine;
  @override
  int? get number;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'is_current')
  int? get isCurrent;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$WorshipCardImplCopyWith<_$WorshipCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
