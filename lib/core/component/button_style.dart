import 'package:flutter/material.dart';

class ButtonStyles {
  ButtonStyles._();

  // 参拝アプリの基本ボタンスタイル
  static ButtonStyle normal({
    double elevation = 2,
    Size minimumSize = const Size(double.infinity, 40),
    Color color = const Color(0xFFC06701),
  }) =>
      ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: color,
        minimumSize: minimumSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
}