import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ks_live/utils/constants.dart';
import 'package:ks_live/widgets/BigText.dart';

class StreamingScreen extends StatefulWidget {
  const StreamingScreen({super.key});

  @override
  State<StreamingScreen> createState() => _StreamingScreenState();
}

class _StreamingScreenState extends State<StreamingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.pexels.com/photos/1004642/pexels-photo-1004642.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  BigText(
                                    text: 'Profile Name',
                                    size: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                  ),
                                  BigText(
                                    letterSpacing: 0.0,
                                    text: '🔥 32020',
                                    size: 10,
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: screenWidth / 2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        reverse: true,
                                        child: Row(
                                          children: List.generate(
                                              10,
                                              (index) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8),
                                                    child: CircleAvatar(
                                                      radius: 18,
                                                    ),
                                                  )),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            bottomLeft: Radius.circular(12)),
                                        color: Colors.black54,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: whiteColor,
                                            ),
                                            SizedBox(width: 4),
                                            InkWell(
                                              onTap: () => Get.back(),
                                              child: Icon(
                                                Icons.close,
                                                color: whiteColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                        BigText(
                          text: 'MICO 118811881  23-10-23',
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600,
                          size: 11,
                          // letterSpacing: 0.0,
                        ),
                        Row(
                          children: [
                            BigText(
                              text: '💎 118282828',
                              size: 18,
                              color: whiteColor,
                              fontWeight: FontWeight.normal,
                            ),
                            SizedBox(width: 20),
                            BigText(
                              text: '🎹 118282828',
                              size: 18,
                              color: whiteColor,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            CustomeBottomSheet(),
          ],
        ),
      ),
    );
  }
}

class CustomeBottomSheet extends StatelessWidget {
  const CustomeBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.message),
                      ),
                      SizedBox(width: 30),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.message,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                    width: screenWidth / 1.7,
                    child: Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            reverse: true,
                            child: Row(
                              children: List.generate(
                                  3,
                                  (index) => Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: CircleAvatar(
                                          radius: 25,
                                        ),
                                      )),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
