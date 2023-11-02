import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class StreamingController extends GetxController {
  static String appId = "67320f1089d14d3ab4cfcab47870f764";
  String channelName = "KsLive";
  String token =
      "007eJxTYGBpNX68++JX9zOnJVovP2U++f7m5gWL3+XO2dHSwPOo9+A7BQZDw9S0FANLk2TLtGQTY7M0SxODpKRU48Qky7TEVOO0lMPHHVMbAhkZNPZqsTIyQCCIz8bgXeyTWZbKwAAAAtck7w==";

  RxInt uid = 0.obs;

  // uid of the local user

  RxInt _remoteUid = 0.obs;
  int get remoteUid => _remoteUid.value; // uid of the remote user
  RxBool _isJoined =
      false.obs; // Indicates if the local user has joined the channel
  bool get isJoined => _isJoined.value;
  late RtcEngine agoraEngine; // Agora engine instance

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>(); // Global key to access the scaffold

  showMessage(String message) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: Text(message),
      showCloseIcon: true,
      closeIconColor: Colors.red,
    ));
  }

  Future<void> setupVideoSDKEngine() async {
    // retrieve or request camera and microphone permissions
    await [Permission.microphone, Permission.camera].request();

    //create an instance of the Agora engine
    agoraEngine = createAgoraRtcEngine();
    await agoraEngine.initialize(RtcEngineContext(appId: appId));
    await agoraEngine.enableVideo();

    // Register the event handler
    agoraEngine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          showMessage(
              "Local user uid:${connection.localUid} joined the channel");

          _isJoined.value = true;
          // update();
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          showMessage("Remote user uid:$remoteUid joined the channel");

          _remoteUid.value = remoteUid;
          // update();
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          showMessage("Remote user uid:$remoteUid left the channel");

          _remoteUid.value = 0;
          // update();
        },
      ),
    );
  }

  void join() async {
    await agoraEngine.startPreview();

    // Set channel options including the client role and channel profile
    ChannelMediaOptions options = const ChannelMediaOptions(
      clientRoleType: ClientRoleType.clientRoleBroadcaster,
      channelProfile: ChannelProfileType.channelProfileCommunication,
    );

    await agoraEngine.joinChannel(
      token: token,
      channelId: channelName,
      options: options,
      uid: uid.value,
    );
  }

  void leave() {
    _isJoined.value = false;
    _remoteUid.value = 0;
    // update();
    agoraEngine.leaveChannel();
    Get.back();
    dispose();
  }

// Release the resources when you leave
  @override
  void dispose() async {
    await agoraEngine.leaveChannel();
    agoraEngine.release();
    super.dispose();
  }
}
