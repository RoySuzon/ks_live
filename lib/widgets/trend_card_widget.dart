import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'BigText.dart';

class TrendCardWidget extends StatefulWidget {
  const TrendCardWidget({Key? key, this.geustCall = false, this.onTap})
      : super(key: key);
  final bool geustCall;
  final VoidCallback? onTap;
  @override
  State<TrendCardWidget> createState() => _TrendCardWidgetState();
}

class _TrendCardWidgetState extends State<TrendCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        children: [
          // Image
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                userUrl,
                width: double.infinity,
                // width: 155,
                // height: 150,
                fit: BoxFit.cover,
              )),

          Positioned(
            left: 0,
            top: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.only(top: 8, left: 6),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                child: BigText(
                  text: "⭐ RisingStar",
                  color: whiteColor,
                  size: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.0,
                )),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black26,
              padding: EdgeInsets.symmetric(
                  horizontal: 12, vertical: 4), // Background color for the name
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  widget.geustCall
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black45),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/female.png',
                                  height: 18,
                                  width: 18,
                                  // color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                BigText(
                                  text: 'Geust call',
                                  color: whiteColor,
                                  size: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox(),
                  BigText(
                    text:
                        'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে।',
                    color: whiteColor,
                    size: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: "ARC Sara",
                        color: whiteColor,
                        size: 10,
                      ),
                      BigText(
                        text: "🔥2012",
                        color: whiteColor,
                        size: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
