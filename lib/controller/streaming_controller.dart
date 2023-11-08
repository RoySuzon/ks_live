import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:permission_handler/permission_handler.dart';

class StreamingController extends GetxController {
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
    await [Permission.camera].request();

    //create an instance of the Agora engine
    agoraEngine = createAgoraRtcEngine();
    await agoraEngine.initialize(RtcEngineContext(appId: kAppId));
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
      token: kToken,
      channelId: kChannelName,
      options: options,
      uid: uid.value,
    );
  }

  void leave() {
    _isJoined.value = false;
    _remoteUid.value = 0;
    // update();
    agoraEngine.leaveChannel();
    // agoraEngine.release();
    Get.back();
  }

// Release the resources when you leave
  @override
  void dispose() async {
    await agoraEngine.leaveChannel();
    agoraEngine.release();
    super.dispose();
  }
}
