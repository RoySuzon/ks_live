import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';
import 'BigText.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.text, required this.imgPath});
  final String text, imgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: Get.width / 3.55,
        height: Get.width / 4,
        decoration: BoxDecoration(
            color: skyBlueColor.withOpacity(.15),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(imgPath),
                  color: skyBlueColor,
                ),
              ),
              BigText(
                text: text,
                size: 14,
                color: skyBlueColor,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
