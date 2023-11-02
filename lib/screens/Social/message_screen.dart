import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/trend_card_widget.dart';

import '../../widgets/BigText.dart';
import '../../widgets/messaeges_card.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  double width = Get.width;
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MessageCard(
                          text: 'Moment',
                          imgPath: 'assets/images/award.png',
                        ),
                        MessageCard(
                          text: 'ABC',
                          imgPath: 'assets/images/female.png',
                        ),
                        MessageCard(
                          text: 'Lorem',
                          imgPath: 'assets/images/female.png',
                        ),
                      ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: width / 5,
                  decoration: BoxDecoration(
                      color: darkDeepPurple.withOpacity(.7),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                              textAlign: TextAlign.left,
                              selectionColor: Colors.amber,
                              maxLines: 2,
                              TextSpan(
                                  text:
                                      'Set a phone number to protect your Acccount',
                                  style: GoogleFonts.montserrat(
                                      color: whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                  children: [])),
                        )),
                        Container(
                          width: 60,
                          child: Image.asset(
                            kProtection,
                            fit: BoxFit.cover,
                            // color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, right: 8),
                            child: SizedBox(
                              width: 30,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    kClose,
                                    height: screenWidth / 20,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
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
