import 'package:doc_app/core/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle textStyle({
    Color? color,
    Color? decorationColor,
    double? size,
    String? family,
    FontWeight? weight,
    double height = 1.3,
    bool? isItalic = false,
    TextDecoration? decoration,
    List<Shadow>? shadow,
  }) {
    return TextStyle(
        color: color ?? AppColors.black,
        inherit: false,
        fontSize: (size ?? 14).sp,
        fontFamily: family,
        fontWeight: weight ?? FontWeight.w400,
        height: height,
        fontStyle: isItalic! ? FontStyle.italic : null,
        decoration: decoration,
        shadows: shadow,
        decorationColor: decorationColor,
    );
        
  }
}
