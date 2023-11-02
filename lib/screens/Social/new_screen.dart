import 'package:flutter/material.dart';
import 'package:ks_live/utils/constants.dart';

import '../../widgets/BigText.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
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
                Column(
                  children: List.generate(
                      10,
                      (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Card(
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: screenHeight / 10,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: 40,
                                                  backgroundColor: Colors.red,
                                                  backgroundImage:
                                                      AssetImage(manImage),
                                                ),
                                                Positioned(
                                                    bottom: 0,
                                                    right: 0,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: index.isOdd
                                                                  ? 2
                                                                  : 0,
                                                              color:
                                                                  Colors.white),
                                                          shape:
                                                              BoxShape.circle),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: index.isOdd
                                                              ? Colors.green
                                                              : Colors
                                                                  .transparent,
                                                        ),
                                                        height: 15,
                                                        width: 15,
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              BigText(
                                                text: 'Profile Name',
                                                color: blackColor,
                                                fontWeight: FontWeight.bold,
                                                size: 24,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    color: Colors.red.shade100),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 5,
                                                      vertical: 3),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/female.png',
                                                        height: 14,
                                                        width: 14,
                                                        // color: Colors.red,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      BigText(
                                                        text: '29',
                                                        size: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              BigText(
                                                text:
                                                    'অফিসিয়াল হোস্ট সাপোর্ট দিবেন প্লিজ',
                                                size: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ],
                                          )),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              BigText(
                                                text: '09.05',
                                                size: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              // SizedBox(width: 5),
                                              Image.asset(
                                                kLove,
                                                color: Colors.grey,
                                                height: 40,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
