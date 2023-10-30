import 'package:flutter/material.dart';
import 'package:ks_live/model/list.dart';
import 'package:ks_live/widgets/BigText.dart';
import '../../utils/constants.dart';
import '../../widgets/popular_post_card.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(screenHeight / 835);
    String avater = 'assets/images/avater.png';
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        1,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    child: Image.asset(
                                      'assets/images/avater_frame.png',
                                      // height: screenWidth / 4,
                                      // color: Colors.black,
                                      // fit: BoxFit.cover,
                                    ),
                                    radius: screenWidth / 9,
                                    backgroundImage: AssetImage(avater),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: screenWidth / 4.5,
                                    child: BigText(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      text: 'Name',
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            )),
                  ),
                ),
              ),

              SizedBox(height: screenHeight / 30),
              Column(
                children: List.generate(
                    ApiClass.abcd.length,
                    (index) => Column(
                          children: [
                            PopularPostCard(
                              images: ApiClass.abcd[index].imageLink,
                              avater: avater,
                              post_text: ApiClass.abcd[index].text,
                              itemCount: ApiClass.abcd[index].imageLink.length,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(),
                            ),
                          ],
                        )),
              ),

              /* ImageSlideshow(
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
              ), */

              SizedBox(
                height: 10,
              ),

              //  cards
            ],
          ),
        ),
      ),
    );
  }
}
