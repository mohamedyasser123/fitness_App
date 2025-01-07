import 'package:fitness_app/Modules/Onboarding/onboarding_screen.dart';
import 'package:fitness_app/Utilites/image_contants.dart';
import 'package:fitness_app/Utilites/text_helper.dart';
import 'package:fitness_app/common/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../Utilites/enums.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String routeName = ScreenRoutes.splashScreen.name;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageConstant.logo),

            Text(
              "Everybody Can Train",
                  style: TextStyleHelper.of(context).bodyRegular.copyWith(color: ThemeModel.grayColor1),

            ),


          ],
        ),
      ),
      bottomNavigationBar:  GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ),
          );
        },
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w),
          child: Container(
            margin: EdgeInsets.only(bottom: 20.h),
            padding: EdgeInsets.symmetric(horizontal:105.w,vertical: 18.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                color: ThemeModel.brandColors,
              boxShadow: const [
                BoxShadow(
                  color: ThemeModel.brandColors2,
                  offset: Offset(30, 712),
                  blurRadius:10
                )
              ]

            ),
            child: Text("Get Started",style: TextStyleHelper.of(context).bodyBold.copyWith(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
