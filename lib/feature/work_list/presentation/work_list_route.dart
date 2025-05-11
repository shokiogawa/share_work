import 'package:flutter/material.dart';
import 'package:stamp_rally_worship/feature/work_list/presentation/work_list_screen.dart';

class WorkListPageRoute extends MaterialPageRoute<void> {
  WorkListPageRoute()
      : super(
          builder: (context) => const WorkListScreen(),
        );
} 