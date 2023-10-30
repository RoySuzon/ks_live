import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'BigText.dart';

class RecommendedCardWidget extends StatefulWidget {
  const RecommendedCardWidget({Key? key}) : super(key: key);

  @override
  State<RecommendedCardWidget> createState() => _RecommendedCardWidgetState();
}

class _RecommendedCardWidgetState extends State<RecommendedCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Card(
        color: whiteColor,
        child: Container(
          height: screenHeight/7.5,
          width: 108,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30, // Adjust the radius as needed
                backgroundColor: Colors.white, // Background color of the circle
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/man1.jpeg",
                    width: 80, // Adjust the width and height as needed
                    height: 80,
                    fit: BoxFit.cover, // Fit the image within the circle
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BigText(text: "Cloud 💭 Lou..", size: 11, fontWeight: FontWeight.w600,letterSpacing: 0.0,),
                  CircleAvatar(
                    backgroundColor: skyBlueColor.withOpacity(0.1),
                    radius: 8,
                    child: ClipOval(
                        child: Image.asset("assets/images/male.png", width: 12,)
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
