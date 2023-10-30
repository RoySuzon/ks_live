import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ks_live/screens/index_screen.dart';
import 'package:ks_live/screens/sign_in_screen.dart';
import 'package:ks_live/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsFlutterBinding.ensureInitialized();

    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(const Index_Screen(),
          transition: Transition.fade, duration: Duration(seconds: 2));
    });
  }

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
