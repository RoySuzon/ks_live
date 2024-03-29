import 'dart:async';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:get/get.dart';
import 'package:ks_live/controller/streaming_controller.dart';
import 'package:ks_live/view/Streaming/steaming_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/BigText.dart';

class AgoraVideoCall extends StatefulWidget {
  const AgoraVideoCall({Key? key}) : super(key: key);

  @override
  _AgoraVideoCallState createState() => _AgoraVideoCallState();
}

class _AgoraVideoCallState extends State<AgoraVideoCall> {
  StreamingController controller = Get.put(StreamingController());
  @override
  void initState() {
    controller.setupVideoSDKEngine().then((value) {
      controller.join();
    });

    super.initState();
  }

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  width: double.infinity,
                  child: _localPreview()),
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top),
                        color: Colors.black54,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(userUrl),
                                  ),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        BigText(
                                          text: useName,
                                          size: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          color: whiteColor,
                                        ),
                                        BigText(
                                          letterSpacing: 0.0,
                                          text: '🔥 32020',
                                          size: 10,
                                          fontWeight: FontWeight.w500,
                                          color: whiteColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      width: screenWidth / 2,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              reverse: true,
                                              child: Row(
                                                children: List.generate(
                                                    10,
                                                    (index) => Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 8),
                                                          child: CircleAvatar(
                                                            backgroundImage:
                                                                AssetImage(
                                                                    manImage),
                                                            radius: 18,
                                                          ),
                                                        )),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12),
                                                  bottomLeft:
                                                      Radius.circular(12)),
                                              color: Colors.black54,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    kPerson,
                                                    color: Colors.white,
                                                    height: screenWidth / 20,
                                                  ),
                                                  SizedBox(
                                                      width: screenWidth / 30),
                                                  InkWell(
                                                    onTap: () {
                                                      controller.leave();
                                                    },
                                                    child: Image.asset(
                                                      kClose,
                                                      color: Colors.white,
                                                      height: screenWidth / 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              ),
                              BigText(
                                text: 'MICO 118811881  23-10-23',
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w600,
                                size: 11,
                                // letterSpacing: 0.0,
                              ),
                              Row(
                                children: [
                                  BigText(
                                    text: '💎 118282828',
                                    size: 18,
                                    color: whiteColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  SizedBox(width: 20),
                                  BigText(
                                    text: '🎹 118282828',
                                    size: 18,
                                    color: whiteColor,
                                    fontWeight: FontWeight.normal,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(controller.uid.value.toString()),
                  Spacer(),
                  CustomeBottomSheet(
                    img: manImage,
                  ),
                ],
              )
            ],
          )),
    );
  }
//ya29.a0AfB_byC6o7cNKrRRERKibHxObx-L-_C4luM4mMchNZl4Tj5JT6_4MK5ABlFoQX90xeCvNQFPqTLbcMKxF4sNeOls9lDwJkdoiUyo-8j2aXTj9lrZPw0pqpDqT_UE-8TpwK8hzMPP2hE--hBPtUc_1EsUGzJViqD5l60aCgYKAUESARASFQHGX2MiQV786V5pNkzsZou9de-PHg0170

//ya29.a0AfB_byAS7nKok7h0xVo_8zfPKsuV62syE2cE4ItIKtooufxhs2iD3yjfm5tqH_cqaIfe3ceUvkOQWjrgnBmUeChFKvEKUsEqiRrCdxfAgbwb9AjxX4HhZdFx0qiSLWh_luVdW7LwiNLn_vH9ArVs6ZQSwPqJutJ7IKQaCgYKAWQSARISFQHGX2MiZtgKncIyXYC3kPrQQQ0OQA0170

// Display local video preview
  Widget _localPreview() {
    if (controller.isJoined) {
      return AgoraVideoView(
        controller: VideoViewController(
          rtcEngine: controller.agoraEngine,
          canvas: VideoCanvas(uid: 0),
        ),
      );
    } else {
      return Center(
        child: Text(
          'Join a channel',
          textAlign: TextAlign.center,
        ),
      );
    }
  }

// Display remote user's video
  Widget _remoteVideo() {
    if (controller.remoteUid != 0) {
      return Expanded(
        child: AgoraVideoView(
          controller: VideoViewController.remote(
            rtcEngine: controller.agoraEngine,
            canvas: VideoCanvas(uid: controller.remoteUid),
            connection: RtcConnection(channelId: kChannelName),
          ),
        ),
      );
    } else {
      String msg = '';
      if (controller.isJoined) msg = 'Waiting for a remote user to join';
      return Text(
        msg,
        textAlign: TextAlign.center,
      );
    }
  }
}
