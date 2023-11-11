import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ks_live/demo/demo.dart';
import 'package:ks_live/firebase_options.dart';
import 'package:ks_live/res/routes/routes.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/view/Auth/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MyController c = Get.put(MyController());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: darkDeepPurple));
    return GetMaterialApp(
      onDispose: () {},
      debugShowCheckedModeBanner: false,
      title: 'KS LIVE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AuthScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
