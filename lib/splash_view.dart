import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizstart/on_boarding_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnBoardingView()));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            214.verticalSpace,
            SvgPicture.asset(
              'assets/svgs/logo.svg',
              width: 162.w,
              height: 231.h,
            )
                .animate()
                .slide(
                  duration: 1.seconds,
                  begin: const Offset(-50, -20),
                  curve: Curves.easeInOut,
                )
                .shake(
                  duration: 1.seconds,
                  curve: Curves.easeInOut,
                ),
            41.verticalSpace,
            SvgPicture.asset(
              'assets/svgs/logoName.svg',
              width: 272.w,
              height: 122.h,
            )
                .animate()
                .fadeIn(
                  duration: 1.seconds,
                  begin: 0,
                  delay: 1.seconds,
                )
                .slide(
                  begin: Offset(-5, 0),
                  curve: Curves.easeInOut,
                ), // .slide(

            Spacer(),
            SvgPicture.asset('assets/svgs/clouds.svg')
                .animate()
                .scaleY(
                  duration: 500.milliseconds,
                  curve: Curves.easeInOut,
                  begin: 0,
                  end: 1,
                )
                .slideY(
                  duration: 500.microseconds,
                  curve: Curves.easeInOut,
                  begin: 1,
                  end: 0,
                )
                .shake(
                  duration: 500.milliseconds,
                  //delay: 500.milliseconds,
                  rotation: 0.01,
                ),
          ],
        ),
      ),
    );
  }
}
