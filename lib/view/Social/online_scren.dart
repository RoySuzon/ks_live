import 'package:flutter/material.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/trend_card_widget.dart';

import '../../widgets/BigText.dart';

class OnelineScreen extends StatefulWidget {
  const OnelineScreen({Key? key}) : super(key: key);

  @override
  State<OnelineScreen> createState() => _OnelineScreenState();
}

class _OnelineScreenState extends State<OnelineScreen> {
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
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
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
                                                            width: index.isEven
                                                                ? 2
                                                                : 0,
                                                            color:
                                                                Colors.white),
                                                        shape: BoxShape.circle),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: index.isEven
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
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
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
