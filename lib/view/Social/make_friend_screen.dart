import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/view/Home/follow_screen.dart';
import 'package:ks_live/view/Social/new_screen.dart';
import 'package:ks_live/view/Social/online_scren.dart';
import 'package:ks_live/view/Social/popular_screen.dart';
import '../../utils/constants.dart';

class MakeFriendScreen extends StatefulWidget {
  const MakeFriendScreen({Key? key}) : super(key: key);

  @override
  State<MakeFriendScreen> createState() => _MakeFriendScreenState();
}

class _MakeFriendScreenState extends State<MakeFriendScreen> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              ButtonsTabBar(
                radius: 30,
                buttonMargin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                height: 35,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                backgroundColor: darkDeepPurple.withOpacity(0.2),
                unselectedBackgroundColor:
                    const Color.fromARGB(255, 85, 75, 75),
                labelStyle: GoogleFonts.montserrat(
                  letterSpacing: 0.0,
                  fontSize: 12,
                  color: blackColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: GoogleFonts.montserrat(
                    letterSpacing: 0.0,
                    fontSize: 12,
                    color: blackColor.withOpacity(0.6),
                    fontWeight: FontWeight.w500),
                tabs: [
                  Tab(
                    text: "Online",
                  ),
                  Tab(
                    text: "New",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(child: OnelineScreen()),
                    Center(
                      child: NewScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
