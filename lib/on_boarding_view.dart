import 'package:chiclet/chiclet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_awesome_animations_kit/flutter_awesome_animations_kit.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svgs/cloudsUp.svg')
              .animate()
              .scaleY(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
                begin: 0,
                end: 1,
              )
              .slideY(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
                begin: 1,
                end: 0,
              )
              .shake(
                duration: 500.milliseconds,
                //delay: 500.milliseconds,
                rotation: 0.01,
              ),
          Column(
            children: [
              Text(
                'تطبيق تعليمي تفاعلي للأطوار الثلاثة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NotoKufiArabic',
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              12.verticalSpace,
              Text(
                'موافق لمنهاج التربية الوطنية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NotoKufiArabic',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          )
              .animate()
              .scaleY(
                duration: 500.milliseconds,
                curve: Curves.easeInOut,
                begin: 0,
                end: 1,
                delay: 1.seconds,
              )
              .slide(
                duration: 1.seconds,
                curve: Curves.easeInOut,
                delay: 500.milliseconds,
                begin: Offset(50, 50),
              ),
          53.verticalSpace,
          Image.asset(
            'assets/images/onboarding1.png',
            width: 297.w,
          ).animate().slide(
                duration: 1.seconds,
                curve: Curves.easeInOut,
                delay: 1.seconds,
                begin: Offset(50, 50),
              ),
          40.verticalSpace,
          ChicletAnimatedButton(
            child: Text('ابدأ الان'),
            onPressed: () {},
            width: 374.w,      
            height: 64.h,
            buttonHeight: 10.h,

            backgroundColor: Color.fromARGB(255, 5, 225, 233),
          )
              .animate()
              .animate()
              .slide(
                duration: 1.seconds,
                curve: Curves.easeInOut,
                delay: 2.seconds,
                begin: Offset(0, 10),
              )
              .scaleXY(
                duration: 1.seconds,
                curve: Curves.easeInOut,
                delay: 2.seconds,
                begin: 0,
                end: 1,
              ),
        ],
      ),
    );
  }
}
