import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:ks_live/res/routes/routes_name.dart';
import 'package:ks_live/view/index_screen.dart';
import 'package:ks_live/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() {
    return [
      GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
      GetPage(
          name: RouteName.indexScreen,
          page: () => Index_Screen(),
          transition: Transition.rightToLeft,
          curve: Curves.bounceOut,
          transitionDuration: Duration(milliseconds: 1000)),
    ];
  }
}
