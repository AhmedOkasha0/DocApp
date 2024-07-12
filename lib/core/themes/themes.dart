import 'package:doc_app/core/themes/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.c247CFF,
      surfaceTint: Colors.transparent,
    ),
  );
}
