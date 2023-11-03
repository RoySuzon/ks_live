import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ks_live/controller/streaming_controller.dart';
import 'package:ks_live/view/Streaming/agora_streaming_screen.dart';
import 'package:ks_live/widgets/trend_card_widget.dart';

import '../../widgets/BigText.dart';

class GeustCallScreen extends StatefulWidget {
  const GeustCallScreen({Key? key}) : super(key: key);

  @override
  State<GeustCallScreen> createState() => _GeustCallScreenState();
}

class _GeustCallScreenState extends State<GeustCallScreen> {
  final controller = Get.put(StreamingController());
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                      itemBuilder: (context, index) => TrendCardWidget(
                        geustCall: true,
                        onTap: () {
                          controller
                              .setupVideoSDKEngine()
                              .then((value) => controller.join())
                              .then((value) => Get.to(AgoraVideoCall(),
                                  transition: Transition.fade,
                                  duration: Duration(milliseconds: 500)));
                        },
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
