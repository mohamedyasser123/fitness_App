import 'package:fitness_app/Utilites/image_contants.dart';
import 'package:fitness_app/Utilites/text_helper.dart';
import 'package:fitness_app/common/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
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
        onTap: (){},
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
