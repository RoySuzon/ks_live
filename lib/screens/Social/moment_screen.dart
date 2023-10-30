import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/screens/Home/follow_screen.dart';
import 'package:ks_live/screens/Social/popular_screen.dart';
import '../../utils/constants.dart';

class MomentScreen extends StatefulWidget {
  const MomentScreen({Key? key}) : super(key: key);

  @override
  State<MomentScreen> createState() => _MomentScreenState();
}

class _MomentScreenState extends State<MomentScreen> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: DefaultTabController(
          length: 3,
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
                unselectedBackgroundColor: Colors.grey[300],
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
                    text: "Follow",
                  ),
                  Tab(
                    text: "Popular",
                  ),
                  Tab(
                    text: "Nearby",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(child: FollowScreen()),
                    Center(
                      child: PopularScreen(),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
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
