import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ks_live/controller/login_screen.dart';
import 'package:ks_live/widgets/BigText.dart';

class AccountAndSecurity extends StatelessWidget {
  const AccountAndSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BigText(text: 'Account and security'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: CircleAvatar(
            backgroundImage: NetworkImage(
                FirebaseAuth.instance.currentUser!.photoURL.toString()),
          )),
          Text('${FirebaseAuth.instance.currentUser!.displayName.toString()}'),
          Text('ID : ${FirebaseAuth.instance.currentUser!.uid.toString()}'),
          SizedBox(height: 30),
          MaterialButton(
            color: Colors.amberAccent,
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                GoogleSignIn().signOut();
              });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
            child: Text('Sign Out'),
          )
        ],
      ),
    );
  }
}
