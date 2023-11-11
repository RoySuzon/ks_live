import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/controller/streaming_controller.dart';

import '../../utils/constants.dart';
import '../../widgets/BigText.dart';
import '../../widgets/trend_card_widget.dart';

class TrendScreen extends StatefulWidget {
  const TrendScreen({Key? key}) : super(key: key);

  @override
  State<TrendScreen> createState() => _TrendScreenState();
}

class _TrendScreenState extends State<TrendScreen> {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: DefaultTabController(
          length: 4,
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
                    text: "All",
                  ),
                  Tab(
                    text: "Super",
                  ),
                  Tab(
                    text: "New Star",
                  ),
                  Tab(
                    text: "Shining",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: All(),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
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

  Widget All() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 70,
              ),
              ImageSlideshow(
                height: screenHeight / 6,
                width: screenWidth / 1.1,
                indicatorBackgroundColor: whiteColor,
                indicatorColor: Colors.blue,
                onPageChanged: (value) {
                  // debugPrint('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
                children: [
                  Image.asset(
                    'assets/images/slide1.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/slide2.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/slide3.jpeg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              //CARD
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8),
                    itemBuilder: (context, index) => TrendCardWidget(),
                    itemCount: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
