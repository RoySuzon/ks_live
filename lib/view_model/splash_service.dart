import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ks_live/controller/login_screen.dart';
import 'package:ks_live/view/index_screen.dart';

class SplashService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  isLogin() {
    // Future.delayed(const Duration(seconds: 2), () {
    //   if (firebaseAuth.currentUser == null) {
    //     return Get.offAll(LoginScreen(),
    //         transition: Transition.fade, duration: Duration(seconds: 2));
    //   } else {
    //     return Get.offAll(Index_Screen(),
    //         transition: Transition.fade, duration: Duration(seconds: 2));
    //   }
    // });

    Future.delayed(Duration(seconds: 2)).then((value) =>
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
          if (user == null) {
            Get.offAll(LoginScreen(),
                transition: Transition.native, duration: Duration(seconds: 1));
          } else {
            Get.offAll(Index_Screen(),
                transition: Transition.native, duration: Duration(seconds: 1));
          }
        }));
  }
}
