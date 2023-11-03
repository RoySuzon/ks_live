import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/view/Social/make_friend_screen.dart';
import 'package:ks_live/view/Social/moment_screen.dart';
import 'package:ks_live/utils/constants.dart';

import 'message_screen.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({Key? key}) : super(key: key);

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: screenWidth / 1.6,
                      child: TabBar(
                        labelColor: blackColor.withOpacity(0.8),
                        indicatorColor: blackColor,
                        indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(width: 3.0, color: blackColor),
                          insets: EdgeInsets.symmetric(horizontal: 25.0),
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: screenWidth / 35),
                        isScrollable: true,
                        splashBorderRadius: BorderRadius.circular(30),
                        labelStyle: GoogleFonts.montserrat(
                          letterSpacing: 0.0,
                          fontSize: 20,
                          color: blackColor.withOpacity(0.7),
                          fontWeight: FontWeight.w700,
                        ),
                        unselectedLabelStyle: GoogleFonts.montserrat(
                            letterSpacing: 0.0,
                            fontSize: 18,
                            color: blackColor.withOpacity(0.6),
                            fontWeight: FontWeight.w500),
                        tabs: const [
                          Tab(
                            text: "Message",
                            // child: BigText(text: "Follow", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                          Tab(
                            text: "Moment",
                            // child: BigText(text: "Trend", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                          /*  Tab(
                            text: "Explore",
                            // child: BigText(text: "Explore", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ), */
                          Tab(
                            text: "Make Firends",
                            // child: BigText(text: "PK", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                          Tab(
                            text: "Group",
                            // child: BigText(text: "Guest Call", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/search.png",
                        width: screenWidth / 14,
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/award.png",
                        width: screenWidth / 15,
                      )),
                ],
              )),
          // actions: [
          //   Icon(Icons.add)
          // ],
        ),
        body: TabBarView(
          children: [
            MessagesScreen(),
            MomentScreen(),
            // Icon(Icons.directions_car, size: 350),
            MakeFriendScreen(),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    ));
  }
}
