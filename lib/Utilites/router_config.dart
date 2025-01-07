// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:universal_html/html.dart' as html;
// import 'package:go_router/go_router.dart';
//
// import '../Modules/Onboarding/onboarding_screen.dart';
// import '../Modules/Splash/splash_screen.dart';
// import 'enums.dart';
//
// //
// // BuildContext? get CURRENT_CONTEXT =>
// //     GoRouterConfig.router.routerDelegate.navigatorKey.currentContext;
// //
// // class GoRouterConfig {
// //   static String getServerUrl() {
// //     String completeUrl = html.window.location.href;
// //     Uri uri = Uri.parse(completeUrl);
// //     String serverUrl =
// //         '${uri.scheme}://${uri.host}${uri.hasPort ? ":${uri.port}" : ""}';
// //     return serverUrl;
// //   }
// //
// //   static void popUntilPath(String pattern) {
// //     final RouteMatch lastMatch =
// //         _router.routerDelegate.currentConfiguration.last;
// //     final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
// //         ? lastMatch.matches
// //         : _router.routerDelegate.currentConfiguration;
// //     final String location = matchList.uri.toString();
// //     final router = GoRouter.of(CURRENT_CONTEXT!);
// //
// //     while (location.contains(pattern)) {
// //       if (!router.canPop()) return;
// //       router.pop();
// //     }
// //   }
// //
// //   static Future popAllFromBrowser() async {
// //     while (
// //     html.window.location.href
// //         .replaceAll(getServerUrl(), "")
// //         .length > 2) {
// //       html.window.history.back();
// //       await Future.delayed(Duration.zero);
// //     }
// //   }
// //
// //   static GoRouter get router => _router;
// //   static final GoRouter _router = GoRouter(
// //     initialLocation: SplashScreen.routeName,
// //       routes: <RouteBase>[
// //         GoRoute(
// //           path: SplashScreen.routeName,
// //           pageBuilder: (_, GoRouterState state) {
// //             return getCustomTransitionPage(
// //               state: state,
// //               child: const SplashScreen(),
// //             );
// //           },
// //         ),
// //         GoRoute(
// //           path: OnboardingScreen.routeName,
// //           pageBuilder: (_, GoRouterState state) {
// //             return getCustomTransitionPage(
// //               state: state,
// //               child: const OnboardingScreen(),
// //             );
// //           },
// //         ),
// //       ]
// //   );
// //
// //   static CustomTransitionPage getCustomTransitionPage(
// //       {required GoRouterState state, required Widget child}) {
// //     return CustomTransitionPage(
// //       key: state.pageKey,
// //       child: child,
// //       reverseTransitionDuration: Duration.zero,
// //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
// //         return ScaleTransition(
// //           scale: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
// //           child: child,
// //         );
// //       },
// //     );
// //   }
// // }
// class MyAppRouts {
//   GoRouter route = GoRouter(
//     routes: [
//       GoRoute(
//         name:  SplashScreen.routeName,
//         path: '/',
//         pageBuilder: (context, state) {
//           return const MaterialPage(child: SplashScreen());
//         },
//       ),
//
//     ],
//
//   );
// }
