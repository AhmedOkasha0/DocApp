
import 'package:doc_app/core/themes/color.dart';
import 'package:doc_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height,
      this.width,
      required this.label,
      required this.onTap,
      this.textSize,
      this.child});

  final double? height;
  final double? width;
  final String label;
  final double? textSize;
  final Widget? child;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (height ?? 50).h,
        width: (width ?? double.infinity).w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.c247CFF,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: child ??
            Text(
              label,
              style: AppStyles.textStyle(
                size: textSize ?? 19,
                weight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
      ),
    );
  }
}
