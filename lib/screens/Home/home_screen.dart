import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/screens/Home/follow_screen.dart';
import 'package:ks_live/screens/Home/geust_call_screen.dart';
import 'package:ks_live/screens/Home/trend_screen.dart';
import 'package:ks_live/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      width: screenWidth / 1.8,
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
                            text: "Follow",
                            // child: BigText(text: "Follow", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                          Tab(
                            text: "Trend",
                            // child: BigText(text: "Trend", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                          /*  Tab(
                            text: "Explore",
                            // child: BigText(text: "Explore", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ), */
                          Tab(
                            text: "PK",
                            // child: BigText(text: "PK", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                          ),
                          Tab(
                            text: "Guest Call",
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
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/video.png",
                        width: screenWidth / 14,
                      )),
                ],
              )),
          // actions: [
          //   Icon(Icons.add)
          // ],
        ),
        body: TabBarView(
          children: [
            FollowScreen(),
            TrendScreen(),
            // Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
            GeustCallScreen(),
          ],
        ),
      ),
    ));
  }
}
