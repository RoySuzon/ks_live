import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/utils/constants.dart';

import '../../widgets/BigText.dart';
import '../../widgets/about_listtile.dart';
import '../../widgets/messaeges_card.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  double width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                AboutListtileWidget(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  height: screenHeight / 12,
                  decoration: BoxDecoration(
                      color: blackColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth / 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning,
                          color: Colors.white,
                        ),
                        SizedBox(width: screenHeight / 80),
                        Expanded(
                          child: BigText(
                              // textAlign: TextAlign.justify,
                              size: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              maxLines: 2,
                              // letterSpacing: 2.0,
                              text:
                                  'Your profile currently is 25% completed,polish up to make friends easiear.'),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      4,
                      (index) => Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Friends',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      2,
                      (index) => Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: index.isEven ? screenWidth / 30 : 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.amberAccent.shade100),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: index.isOdd
                                                  ? Colors.amber
                                                  : Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.currency_bitcoin,
                                              color: index.isEven
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          )),
                                      SizedBox(width: 8),
                                      Expanded(
                                          child: BigText(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        text: 'Recharge Coin',
                                        size: 14,
                                      )),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: screenWidth / 30,
                                        color: Colors.amber.shade900,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5),
                      itemBuilder: (context, index) => ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Card(
                          margin: EdgeInsets.zero,
                          color: Colors.grey.shade200,
                          child: Container(
                            // color: blackColor,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 14),
                                    child: Transform.rotate(
                                      angle: pi / 3,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/award.png'),
                                        // height: 50,
                                        width: 50,
                                        // height: screenHeight / 2,
                                        // width: screenWidth / 2.2,
                                        // height: screenWidth / 2.2,
                                        // height: screenWidth / 2.2,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'User Level',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      itemCount: 9,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
