import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'BigText.dart';

class AboutListtileWidget extends StatelessWidget {
  const AboutListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 10,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(userUrl),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BigText(
                text: useName,
                color: blackColor,
                fontWeight: FontWeight.bold,
                size: 24,
              ),
              SizedBox(height: 8),
              BigText(
                text: 'Mico ID: 1102282829',
                size: 12,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 8),
            ],
          )),
          Row(
            children: [
              Image.asset(
                kCircle,
                height: screenWidth / 40,
                color: redColor,
              ),
              SizedBox(width: 5),
              Image.asset(
                kForward,
                color: Colors.grey,
                height: screenWidth / 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
