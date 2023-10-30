import 'package:flutter/material.dart';
import 'package:ks_live/widgets/trend_card_widget.dart';

import '../../widgets/BigText.dart';

class GeustCallScreen extends StatefulWidget {
  const GeustCallScreen({Key? key}) : super(key: key);

  @override
  State<GeustCallScreen> createState() => _GeustCallScreenState();
}

class _GeustCallScreenState extends State<GeustCallScreen> {
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8),
                      itemBuilder: (context, index) =>
                          TrendCardWidget(geustCall: true),
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
