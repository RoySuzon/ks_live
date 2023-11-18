import 'package:flutter/material.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/trend_card_widget.dart';

import '../../widgets/BigText.dart';

class FollowScreen extends StatefulWidget {
  const FollowScreen({Key? key}) : super(key: key);

  @override
  State<FollowScreen> createState() => _FollowScreenState();
}

class _FollowScreenState extends State<FollowScreen> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/emptybox.png",
                      width: screenWidth / 1.7,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BigText(
                      text:
                          "None of the broadcaster you follow is \n                             on live",
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8),
                      itemBuilder: (context, index) => TrendCardWidget(
                        userUrl:
                            'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      ),
                      itemCount: 10,
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5),
                    child: BigText(
                      text: "Recommended",
                      size: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.0,
                    )),
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
