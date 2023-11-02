import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/screens/Social/make_friend_screen.dart';
import 'package:ks_live/screens/Social/moment_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/BigText.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      iconTheme: IconThemeData(color: Colors.white),
                      // leading: Text('data'),

                      expandedHeight: Get.width * .8,
                      // collapsedHeight: 80,
                      floating: false,
                      // toolbarHeight: 100,
                      backgroundColor: Colors.grey,
                      pinned: true,
                      forceElevated: true,
                      automaticallyImplyLeading: true,

                      // title: Text('data'),
                      actions: [
                        Image.asset(
                          'assets/images/search.png',
                          height: 34,
                          width: 34,
                          color: whiteColor,
                        )
                      ],
                      flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.pin,
                          // expandedTitleScale: 1.4,
                          // titlePadding: EdgeInsets.zero,
                          // centerTitle: false,
                          // stretchModes: [
                          //   StretchMode.blurBackground,
                          //   StretchMode.zoomBackground
                          // ],
                          // title: BigText(
                          //   text: "User Name",
                          // ),
                          background: Image.asset(
                            manImage,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ];
                },
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                        child: Image.network(
                      networkImg,
                      height: screenWidth / 6,
                      width: screenWidth / 6,
                      fit: BoxFit.cover,
                    )),
                    Expanded(
                      child: DefaultTabController(
                        length: 3,
                        child: Scaffold(
                          appBar: AppBar(
                            elevation: 0.0,
                            bottom: PreferredSize(
                                preferredSize: Size.fromHeight(0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: screenWidth,
                                        child: TabBar(
                                          labelColor:
                                              blackColor.withOpacity(0.8),
                                          indicatorColor: blackColor,
                                          indicator:
                                              const UnderlineTabIndicator(
                                            borderSide: BorderSide(
                                                width: 3.0, color: blackColor),
                                            insets: EdgeInsets.symmetric(
                                                horizontal: 25.0),
                                          ),
                                          indicatorSize:
                                              TabBarIndicatorSize.label,
                                          labelPadding: EdgeInsets.symmetric(
                                              horizontal: screenWidth / 35),
                                          isScrollable: true,
                                          splashBorderRadius:
                                              BorderRadius.circular(30),
                                          labelStyle: GoogleFonts.montserrat(
                                            letterSpacing: 0.0,
                                            fontSize: 20,
                                            color: blackColor.withOpacity(0.7),
                                            fontWeight: FontWeight.w700,
                                          ),
                                          unselectedLabelStyle:
                                              GoogleFonts.montserrat(
                                                  letterSpacing: 0.0,
                                                  fontSize: 18,
                                                  color: blackColor
                                                      .withOpacity(0.6),
                                                  fontWeight: FontWeight.w500),
                                          tabs: const [
                                            Tab(
                                              text: "Profile",
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
                                              text: "Honor wall",
                                              // child: BigText(text: "PK", letterSpacing: 0.0, fontWeight: FontWeight.w600,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            // actions: [
                            //   Icon(Icons.add)
                            // ],
                          ),
                          body: TabBarView(
                            children: [
                              ProfileScreen(),
                              MomentScreen(),
                              // Icon(Icons.directions_car, size: 350),
                              MakeFriendScreen(),
                              // Icon(Icons.directions_car, size: 350),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: Get.width / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(bgImg),
                          fit: BoxFit.cover,
                          opacity: .5),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                              child: Image.asset(
                            manImage,
                            height: screenWidth / 8,
                            width: screenWidth / 8,
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 10),
                            child: Text(
                              'Explore more facilities',
                              style: GoogleFonts.montserrat(
                                  color: whiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          )),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: whiteColor),
                            // width: 30,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 3),
                              child: Text(
                                'Go',
                                style: GoogleFonts.montserrat(
                                  color: blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              // maxRadius: ,
                              backgroundImage: NetworkImage(
                                  'https://play-lh.googleusercontent.com/Ln4_2qjVrECAXHW8KPm1Uw-g8aT1t4M4AS_Dy0nHSCWUZkH_vVTb5L_AtJS_OWow0w'),
                              maxRadius: 30,
                            ),
                            title: BigText(
                              text: 'LUDO game',
                              fontWeight: FontWeight.bold,
                            ),
                            trailing: Align(
                                widthFactor: 0,
                                alignment: Alignment.topRight,
                                child: BigText(text: '23-10-27')),
                            subtitle: BigText(
                              text: '677 people are playing',
                              color: Colors.grey.shade700,
                            ),
                          )),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/* 
class TileCard extends StatelessWidget {
  final bool isActive;
  final String title;
  final Color textColor;
  final Color backgroundColor;
  final double fontSizeBase;
  final double fontSizeActive;
  final VoidCallback onTap;

  const TileCard({
    Key? key,
    this.isActive = false,
    required this.title,
    this.textColor = redColor,
    this.backgroundColor = Colors.white,
    this.fontSizeBase = 130,
    this.fontSizeActive = 180,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: redColor,
          ),
        ],
      ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(15.0),
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            child: AnimatedDefaultTextStyle(
              style: isActive
                  ? TextStyle(fontSize: fontSizeActive)
                  : TextStyle(fontSize: fontSizeBase),
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceOut,
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontFamily: 'CabinSketch',
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 */