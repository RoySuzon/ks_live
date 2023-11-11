import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _authService = GoogleSignIn();
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    print(credential.secret.toString());

    // print(jsonDecode(credential.toString()).toString());

    // Once signed in, return the UserCredential
    final firebaseData =
        await FirebaseAuth.instance.signInWithCredential(credential);

    Map<String, dynamic>? googleData = firebaseData.additionalUserInfo!.profile;
    GoogleDataPass.fetchData(
        name: googleData!['name'].toString(),
        imageUrl: googleData['picture'].toString(),
        deviceSn: googleData['id'].toString(),
        googleToken: firebaseData.credential!.accessToken.toString(),
        googleData: {
          'profile': googleData,
          'token': firebaseData.credential!.token.toString()
        });

    return firebaseData;
  }

  Future signOut() async {
    return _auth.signOut().then(
        (value) => _authService.signOut().then((value) => Get.reloadAll()));
  }
}

class GoogleDataPass {
  // final String name;
  // final String imageUrl;
  // final String deviceSN;
  // final String googleToken;
  // final Map<String, dynamic> googleData;
  // GoogleDataPass(this.name, this.imageUrl, this.deviceSN, this.googleToken,
  //     this.googleData);

  static fetchData(
      {required String name,
      required String imageUrl,
      required String deviceSn,
      required String googleToken,
      required Map<String, dynamic> googleData}) async {
    final data =
        await Dio().post('https://liveapp.onrender.com/user/google-data',
            data: jsonEncode({
              "name": name,
              "imageUrl": imageUrl,
              "deviceSN": deviceSn,
              "googleToken": googleToken,
              "googleData": googleData
            }));

    if (data.statusCode == 200) {
      final jonsData = jsonDecode(data.toString());
      print(data.statusCode);
      print(data.toString());
      return jonsData;
    } else {
      print(data.statusCode);
      return jsonDecode(data.toString());
    }
  }
}
