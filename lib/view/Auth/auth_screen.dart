import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ks_live/controller/login_screen.dart';
import 'package:ks_live/view/index_screen.dart';
import 'package:ks_live/view/sign_in_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance.currentUser;
    // print((_auth!.toString()).toString());
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print('abc:' + _auth.toString());
            return snapshot.connectionState != ConnectionState.done
                ? Index_Screen()
                : Center(child: Text('data'));
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
