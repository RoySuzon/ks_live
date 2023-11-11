import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ks_live/controller/login_screen.dart';
import 'package:ks_live/view/Auth/auth_screen.dart';
import 'package:ks_live/view/Me/details_profile/user_details_screen.dart';
import 'package:ks_live/view/index_screen.dart';
import 'package:ks_live/view/sign_in_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/view_model/splash_service.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: semiWhiteColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ZoomIn(
              duration: const Duration(seconds: 2),
              child: Image.asset("assets/images/logo.png",
                  width: screenWidth / 1.4),
            )),
            // SizedBox(height: screenHeight/17,)
          ],
        ),
      ),
    );
  }
}
