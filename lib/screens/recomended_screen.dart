import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ks_live/screens/index_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/BigText.dart';
import 'package:ks_live/widgets/ButtonWithIcon.dart';
import 'package:ks_live/widgets/recommended_card_widget.dart';

class RecommendedScreen extends StatefulWidget {
  const RecommendedScreen({Key? key}) : super(key: key);

  @override
  State<RecommendedScreen> createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 38,),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(text: "Recommended", size: 16, fontWeight: FontWeight.w700,letterSpacing: 0.1,),
                      GestureDetector(
                          onTap: (){
                            Get.offAll(Index_Screen(), transition: Transition.rightToLeft);
                          },
                          child: BigText(text: "Skip", size: 16, fontWeight: FontWeight.w600,letterSpacing: 0.1,)
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                flex:12,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                          RecommendedCardWidget(),
                        ],
                      ),
                    ],
                  ),
                )
            ),
            Expanded(
              child: ButtonWithIcon(
                onPressed: (){},
                color: darkDeepPurple,
                text: "Follow",
                fontWeight: FontWeight.w600,
                textColor: whiteColor,
                icon: Icon(Icons.arrow_forward_ios_sharp, color: whiteColor,),
                size: Size(screenWidth/1.1,600),
              ),
            ),
            SizedBox(height: 12,)
          ],
        )
      ),

    );
  }
}


// bottomSheet: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// ButtonWithIcon(
// onPressed: (){},
// color: darkDeepPurple,
// text: "Follow",
// fontWeight: FontWeight.w600,
// textColor: whiteColor,
// ),
// icon: Icon(Icons.arrow_forward_ios_sharp, color: whiteColor,),
// size: Size(screenWidth/1.1,50),
// ),
// SizedBox(height: 15,)
// ],
