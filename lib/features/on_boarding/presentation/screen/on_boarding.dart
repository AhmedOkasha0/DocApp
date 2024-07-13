import 'package:doc_app/core/constatns/images.dart';
import 'package:doc_app/core/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 45.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImageConstants.docLogo,
                  height: 38.h,
                  width: 38.w,
                ),
                const Text(
                  "Docdoc",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Gap(40.h),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                ImageConstants.onBoardingBackGround,
                height: 306.h,
                width: 308.w,
                fit: BoxFit.fill,
              ),
              Image.asset(
                ImageConstants.doctorImage,
                height: 443.h,
                width: 443.w,
              ),
              Positioned(
                left: 90.w,
                bottom: 40.h,
                child: const Text(
                  "Best Doctors",
                  style: TextStyle(
                    color: AppColors.c247CFF,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                bottom: -20.h,
                left: 60.w,
                child: const Text(
                  " Appointment App",
                  style: TextStyle(
                    color: AppColors.c247CFF,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
