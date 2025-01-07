import 'package:fitness_app/Utilites/text_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utilites/enums.dart';
import '../../Utilites/image_contants.dart';
import '../../common/theme_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static String routeName = ScreenRoutes.onboarding.name;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
       alignment: Alignment.topCenter,
       children: [
         PageView(
           controller: pageController,
           onPageChanged: (index) {
             setState(() {
               currentIndex = index;
             });
           },
           children: [
             PageWidget(
               imagePath:ImageConstant.splash1 ,
               title: "Track Your Goal",
               des: "Don't worry if you have trouble determining your goals, "
                   "We can help you determine your goals and track your goals",
             ),
             PageWidget(
               imagePath:ImageConstant.splash2 ,
               title: "Get Burn",
               des: "Let’s keep burning, to achive yours goals, it hurts only temporarily,"
                   " if you give up now you will be in pain forever",
             ),
             PageWidget(
               imagePath:ImageConstant.splash3 ,
               title: "Eat Well",
               des: "Let's start a healthy lifestyle with us, we can determine your diet every day."
                   " healthy eating is fun",
             ),
             PageWidget(
               imagePath:ImageConstant.splash4 ,
               title: "Improve Sleep  Quality",
               des: "Improve the quality of your sleep with us,"
                   " good quality sleep can bring a good mood in the morning",
             )


           ],
         ),
         Positioned(
             right: 20.w,
             bottom: 20.h,
             child: InkWell(
               onTap: () {
                 if (currentIndex < 3) {

                   pageController.animateToPage(
                     currentIndex + 1,
                     duration: const Duration(milliseconds: 500),
                     curve: Curves.decelerate,
                   );
                 } else {
                   Navigator.pop(context);
                 }
               },

               child: AnimatedContainer(
                 height: 60.h ,
                 width: 60.w,
                  duration: const Duration(milliseconds: 5),

                 decoration:  BoxDecoration(
                     border: Border.all(
                       color: ThemeModel.brandColors,
                       width:1,
                     ),
                     //color: ThemeModel.brandColors,
                     shape: BoxShape.circle
                 ),

                 child: Container(
                   height: 45.h,
                   width: 45.w,
                   margin: const EdgeInsets.all(2),
                   decoration: const BoxDecoration(
                 color: ThemeModel.brandColors,
                 shape: BoxShape.circle
                            ),
                   child: const Icon(
                     Icons.arrow_forward_ios,
                     size: 15,
                     color: Colors.white,
                   ),
                          ),
               ),
             ))


       ],
         )
      ),
    );
  }
}
class PageWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String des;
  const PageWidget({super.key, required this.imagePath, required this.title, required this.des});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 345.h,
          width: double.infinity,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(height: 80.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: SizedBox(
            width: 200.w,
            child: Text(title,
            textAlign: TextAlign.start,
            style: TextStyleHelper.of(context).h1Bold.copyWith(color:Colors.black ),
            ),
          ),
        ),
        SizedBox(height: 40.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(des,
            style: TextStyleHelper.of(context).bodyRegular.copyWith(color: ThemeModel.grayColor1),
          ),
        )


      ],
    );
  }
}
