import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Modules/Splash/splash_screen.dart';
import 'Utilites/router_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        home:SplashScreen() ,
      //  title: 'Flutter Quiz App',
        debugShowCheckedModeBanner: false,
        // routeInformationParser: MyAppRouts().route.routeInformationParser,
        // routerDelegate: MyAppRouts().route.routerDelegate,
      ),
    );
  }
}


