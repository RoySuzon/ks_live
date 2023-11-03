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
  final controller = Get.put(StreamingController());

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
