import 'package:doc_app/core/constatns/images.dart';
import 'package:doc_app/core/themes/color.dart';
import 'package:doc_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImage extends StatefulWidget {
  const DoctorImage({super.key});

  @override
  State<DoctorImage> createState() => _DoctorImageState();
}

class _DoctorImageState extends State<DoctorImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageConstants.onBoardingBackGround),
        Container(
          
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(ImageConstants.doctorImage),
        ),
        Positioned(
          bottom: 30.h,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            style: AppStyles.textStyle(size: 32, weight: FontWeight.w700,color: AppColors.c247CFF,),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
