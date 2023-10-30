import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'BigText.dart';

class PopularPostCard extends StatefulWidget {
  const PopularPostCard({
    super.key,
    required this.avater,
    required this.post_text,
    required this.itemCount,
    required this.images,
  });

  final String avater, post_text;
  final int itemCount;
  final List images;

  @override
  State<PopularPostCard> createState() => _PopularPostCardState();
}

class _PopularPostCardState extends State<PopularPostCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                // minRadius: 20,
                radius: 25,
                // radius: 2,
                backgroundImage: AssetImage(widget.avater),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: 'SkyMukta',
                      fontWeight: FontWeight.bold,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.red.shade100),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/female.png',
                              height: 18,
                              width: 18,
                              // color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            BigText(
                              text: '29',
                              size: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: darkRedColor.withOpacity(.2)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: BigText(
                        text: 'Follow',
                        size: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              )
            ],
          ),
          BigText(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: widget.post_text,
            fontWeight: FontWeight.w500,
            size: 18,
          ),
          SizedBox(height: 12),
          Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        widget.itemCount.isOdd && widget.itemCount != 1 ||
                                widget.itemCount > 4
                            ? 3
                            : 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(widget.images[index]),
                    // height: screenHeight / 2,
                    // width: screenWidth / 2.2,
                    // height: screenWidth / 2.2,
                    fit: BoxFit.cover,
                  ),
                ),
                itemCount: widget.itemCount,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 20),
            child: BigText(
              text: '5 days',
              fontWeight: FontWeight.w600,
              size: 12,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                like++;
                              });
                            },
                            child: BigText(text: '👍🏻')),
                        Text(like.toString())
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                edite++;
                              });
                            },
                            child: BigText(text: '✍🏻')),
                        Text(edite.toString())
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
            ],
          ),
        ],
      ),
    );
  }

  int like = 0;
  int edite = 0;
  // int itmeCount = 4;
}
