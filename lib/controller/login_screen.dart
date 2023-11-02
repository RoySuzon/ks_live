import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ks_live/screens/index_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:get/route_manager.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var moreOption = false;
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.height / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.asset(
                  kLogo,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  height: Get.height / 3,
                  // height: Get.height / 3,
                  // width: Get.height / 3,
                  // color: Colors.green,
                ),
              ),
              // CustomButton(
              //   'Login With Facebook',
              //   icon: FontAwesomeIcons.facebook,
              //   color: Colors.white,
              //   bgColor: Colors.blue.shade400,
              //   onTap: () {
              //     // Get.to();
              //   },
              // ),
              // SizedBox(height: Get.height / 30),
              CustomButton(
                'Sign in With Google',
                icon: FontAwesomeIcons.google,
                color: Colors.black,
                onTap: () async {
                  // await GoogleSignInApi.login();

                  // launchUrlString('http://127.0.0.1:8080/auth/google');
                  launchUrl(Uri.parse('http://localhost:8080/auth/google'))
                      .then((value) => ));
Get.to(Index_Screen()
                  // Get.offAll(Index_Screen(),
                  //     transition: Transition.native,
                  //     duration: Duration(seconds: 1));
                },
              ),
              SizedBox(height: 30),
              !moreOption
                  ? SizedBox(
                      height: 40,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            moreOption = true;
                          });
                        },
                        child: Text('Other Option',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    )
                  : SizedBox(
                      height: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.facebook),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.phone),
                          ),
                        ],
                      ),
                    ),
              Text(
                  'Singing up means agree to OUR Terms of\nService amd Service and Privacy Policy',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
    this.text, {
    super.key,
    this.color = Colors.black,
    required this.icon,
    this.bgColor,
    this.fontColor,
    required this.onTap,
  });
  final IconData icon;
  final Color? color;
  final Color? bgColor;
  final Color? fontColor;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // minWidth: double.infinity,

      //  Border.all(width: 1, color: color ?? Colors.transparent),
      // color: bgColor,

      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: bgColor,
          elevation: 0,
          shape: StadiumBorder(
              side: BorderSide(width: 1, color: bgColor ?? Colors.black))),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  maxLines: 1,
                  style: TextStyle(
                      color: color,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
