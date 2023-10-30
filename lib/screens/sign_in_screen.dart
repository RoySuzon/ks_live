import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:ks_live/screens/recomended_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/BigText.dart';
import 'package:ks_live/widgets/ButtonWithIcon.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiWhiteColor,
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight / 10,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: screenHeight / 3.1,
                ),
                SizedBox(
                  height: screenHeight / 10,
                ),
                SizedBox(
                  width: screenWidth / 1.1,
                  height: screenHeight / 16,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(orangeColor),
                    ),
                    onPressed: () {
                      Get.offAll(RecommendedScreen(),
                          transition: Transition.downToUp);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/google1.png", // Replace with the actual image path
                          width: 24, // Adjust the width as needed
                          height: 24,
                          color: whiteColor, // Adjust the height as needed
                        ),
                        SizedBox(
                            width:
                                25), // Add some spacing between the image and text
                        BigText(
                          text: "Sign in with Google",
                          size: 15,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 35,
                ),
                SizedBox(
                  width: screenWidth / 1.1,
                  height: screenHeight / 16,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(darkDeepPurple),
                    ),
                    onPressed: () {
                      Get.offAll(RecommendedScreen(),
                          transition: Transition.downToUp);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/mail.png", // Replace with the actual image path
                          width: 24, // Adjust the width as needed
                          height: 24,
                          color: whiteColor, // Adjust the height as needed
                        ),
                        SizedBox(
                            width:
                                25), // Add some spacing between the image and text
                        BigText(
                          text: "Sign in with Email",
                          size: 15,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 10,
                ),
                BigText(
                  text: "By continuing, you agree to our",
                  size: 14,
                ),
                BigText(
                  text: "Terms of use, Broadcaster Agreement & ",
                  size: 14,
                  fontWeight: FontWeight.w700,
                ),
                BigText(
                  text: "Privacy policy ",
                  size: 14,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
