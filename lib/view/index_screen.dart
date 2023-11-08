import 'package:flutter/material.dart';
import 'package:ks_live/view/Home/home_screen.dart';
import 'package:ks_live/view/Me/me_screen.dart';
import 'package:ks_live/view/Social/social_screen.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/BigText.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Index_Screen extends StatefulWidget {
  const Index_Screen({Key? key}) : super(key: key);

  @override
  State<Index_Screen> createState() => _index_screenState();
}

class _index_screenState extends State<Index_Screen> {
  var selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    selected = 0;
    controller = PageController(initialPage: selected);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: PageView(
          controller: controller,
          children: const [
            HomeScreen(),
            Center(
              child: Icon(Icons.gamepad),
            ),
            SocialScreen(),
            MeScreen(),
          ],
          // Disable automatic scrolling
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: StylishBottomBar(
          option: AnimatedBarOptions(
            iconSize: 30,
            barAnimation: BarAnimation.fade,
            iconStyle: IconStyle.Default,
            opacity: 0.3,
          ),
          items: [
            BottomBarItem(
              selectedColor: blackColor,
              icon: ImageIcon(
                AssetImage(
                  kHome,
                ),
                size: 20,
              ),
              title: BigText(
                text: "Home",
                color: selected != 0 ? Colors.grey : blackColor,
                size: selected == 0 ? 16 : 13,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w700,
              ),
              backgroundColor: blackColor,
              selectedIcon: ImageIcon(
                AssetImage(
                  kHome1,
                ),
                size: 30,
                color: blackColor,
              ),
            ),
            BottomBarItem(
              icon: ImageIcon(
                AssetImage(
                  kPuzzle,
                ),
                size: 20,
              ),
              title: BigText(
                text: "Game",
                color: selected != 1 ? Colors.grey : blackColor,
                size: selected == 1 ? 16 : 13,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w700,
              ),
              backgroundColor: blackColor,
              selectedColor: blackColor,
              selectedIcon: ImageIcon(
                AssetImage(
                  kPuzzle1,
                ),
                size: 30,
                color: blackColor,
              ),
            ),
            BottomBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/megaphone.png"),
                size: 20,
              ),
              title: BigText(
                text: "Social",
                color: selected != 2 ? Colors.grey : blackColor,
                size: selected == 2 ? 16 : 13,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w700,
              ),
              backgroundColor: blackColor,
              selectedIcon: ImageIcon(
                AssetImage("assets/images/megaphone1.png"),
                size: 30,
                color: blackColor,
              ),
            ),
            BottomBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/user.png"),
                size: 20,
              ),
              title: BigText(
                text: "Me",
                color: selected != 3 ? Colors.grey : blackColor,
                size: selected == 3 ? 16 : 13,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w700,
              ),
              backgroundColor: blackColor,
              selectedIcon: ImageIcon(
                AssetImage("assets/images/user1.png"),
                size: 30,
                color: blackColor,
              ),
            ),
          ],
          fabLocation: StylishBarFabLocation.center,
          hasNotch: true,
          currentIndex: selected,
          onTap: (index) {
            setState(() {
              selected = index;
              controller.jumpToPage(index);
            });
          },
        )

        // bottomNavigationBar: SalomonBottomBar(
        //   itemPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        //   backgroundColor: semiWhiteColor,
        //   currentIndex: _currentIndex,
        //   onTap: (i){
        //     setState(() {
        //       _currentIndex = i;
        //       print(i);
        //     });
        //   },
        //   items: [
        //     /// Home
        //     SalomonBottomBarItem(
        //       icon: Icon(Icons.home_filled),
        //       title: Text("Home"),
        //       selectedColor: blackColor,
        //     ),

        //     /// Likes
        //     SalomonBottomBarItem(
        //       icon: ImageIcon(
        //         AssetImage("assets/images/joystick.png"),
        //         color: blackColor,
        //         size: 30,
        //       ),
        //       title: Text("Game"),
        //       selectedColor: blackColor,
        //     ),

        //     /// Search
        //     SalomonBottomBarItem(
        //       icon: ImageIcon(
        //         AssetImage("assets/images/megaphone.png"),
        //         color: blackColor,
        //         size: 30,
        //       ),
        //       title: Text("Social"),
        //       selectedColor: blackColor,
        //     ),

        //     /// Profile
        //     SalomonBottomBarItem(
        //       icon: ImageIcon(
        //         AssetImage("assets/images/user.png"),
        //         color: blackColor,
        //         size: 23,
        //       ),
        //       title: Text("Profile"),
        //       selectedColor: blackColor,
        //     ),
        //   ],
        // ),
        );
  }
}
