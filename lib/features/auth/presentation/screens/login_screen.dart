import 'package:doc_app/core/common/widgets/custom_input_field.dart';
import 'package:doc_app/core/themes/color.dart';
import 'package:doc_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 30.w,
            right: 30.w,
            top: 50.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: AppStyles.textStyle(
                    size: 24,
                    weight: FontWeight.w700,
                    color: AppColors.c247CFF),
              ),
              Text(
                "We're excited to have you back, can't wait to \n see what you've been up to since you last \n logged in.",
                style: AppStyles.textStyle(
                  size: 14,
                ),
                textAlign: TextAlign.start,
              ),
              Gap(30.h),
              // const InputFormField()
            ],
          ),
        ),
      ),
    );
  }
}
