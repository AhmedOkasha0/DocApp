
import 'dart:ui';

import 'package:doc_app/core/common/widgets/custom_buttom.dart';
import 'package:doc_app/core/constatns/images.dart';
import 'package:doc_app/core/themes/color.dart';
import 'package:doc_app/core/themes/styles.dart';
import 'package:doc_app/features/on_boarding/presentation/widgets/doctor_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top:30.h ),
          child:  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(ImageConstants.docLogo),
                  Gap(8.w),
                  Text("Docdoc",style: AppStyles.textStyle(
                    size: 30,
                    color: Colors.black,
                    weight: FontWeight.w700
                  ),),

                ],
              
              ),
              Gap(30.h),
              const DoctorImage(),
              Gap(10.h),
              Text("Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.",style: AppStyles.textStyle(
                size: 12,
                color: AppColors.c757575,
              ),
              textAlign: TextAlign.center,),
              Gap(30.h),
              CustomButton(label: "Get Started", onTap: (){},
              height: 52,
              width: 311,

              )
            ],
          ),
        ),
      ),
    );
  }
}
