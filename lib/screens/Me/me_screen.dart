import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ks_live/controller/login_screen.dart';
import 'package:ks_live/screens/Me/user_screen.dart';
import 'package:ks_live/utils/constants.dart';

class MeScreen extends StatefulWidget {
  const MeScreen({Key? key}) : super(key: key);

  @override
  State<MeScreen> createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 12,
              actions: [
                GestureDetector(
                  onTap: () {
                    Get.offAll(LoginScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      kScanner,
                      height: screenWidth / 18,
                      width: screenWidth / 18,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAll(LoginScreen());
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          kSetting,
                          height: screenWidth / 15,
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          width: 10,
                          height: 10,
                          child: Image.asset(
                            kCircle,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            // actions: [
            //   Icon(Icons.add)
            // ],

            body: AboutMeScreen()));
  }
}
