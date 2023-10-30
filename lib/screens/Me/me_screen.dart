import 'package:flutter/material.dart';
import 'package:ks_live/screens/Me/about_me_screen.dart';
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
                SizedBox(
                  width: screenWidth / 1.4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.qr_code,
                              size: screenWidth / 15,
                            )),
                        GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.settings,
                              size: screenWidth / 15,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
            // actions: [
            //   Icon(Icons.add)
            // ],

            body: AboutMeScreen()));
  }
}
