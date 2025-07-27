import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/customwidgets/custom_thumbnail.dart';
import 'package:you_tube/customwidgets/custtom_con_shorts.dart';
import 'package:you_tube/customwidgets/sub_Elevated.dart';
import 'package:you_tube/customwidgets/subscription_container.dart';

class Subscribe extends StatelessWidget {
  const Subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        leading: Image.asset("assets/images/youtubrgif.png"),
        title: Text(
          "Youtube",
          style: TextStyle(
            color: const Color.fromARGB(255, 248, 242, 242),
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Icon(Icons.cast, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white, size: 25),
          SizedBox(width: 15),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      circle_con(img: "assets/images/hungama.jpg"),
                      Column(
                        children: [
                          Text(
                            "Hungama",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      circle_con(img: "assets/images/disneygif.gif"),
                      Column(
                        children: [
                          Text("Disney", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      circle_con(img: "assets/images/giphy.gif"),

                      Column(
                        children: [
                          Text("Nick", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      circle_con(img: "assets/images/CN.gif"),

                      Column(
                        children: [
                          Text("CN", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      circle_con(img: "assets/images/sonysub.jpeg"),

                      Column(
                        children: [
                          Text(
                            "Sony_Sab",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      circle_con(img: "assets/images/image copy.png"),
                      Column(
                        children: [
                          Text(
                            "T-series",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      circle_con(img: "assets/images/images.jpeg"),
                      Column(
                        children: [
                          Text("Sony", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  sub_ele(buttonname: "All", onPress: () {}),
                  SizedBox(width: 10),
                  sub_ele(buttonname: "Today", onPress: () {}),
                  SizedBox(width: 10),
                  sub_ele(buttonname: "Videos", onPress: () {}),
                  SizedBox(width: 10),
                  sub_ele(buttonname: "Shorts", onPress: () {}),
                  SizedBox(width: 10),
                  sub_ele(buttonname: "Live", onPress: () {}),
                  SizedBox(width: 10),
                  sub_ele(buttonname: "Podcasts", onPress: () {}),
                  SizedBox(width: 10),
                  sub_ele(buttonname: "Today", onPress: () {}),
                ],
              ),
            ),
            SizedBox(height: 10),

            Stack(
              children: [
              custom_thumbnail(img: "assets/images/download (1).gif"),

                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 100, top: 215, right: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.podcasts, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                circle_con(img: "assets/images/CN.gif"),

                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oggy Is Live",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 246, 243, 243),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "#OggyAndTheCockroches",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 240, 234, 234),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
               circle_con(img: "assets/images/image copy 3.png"),
                SizedBox(width: 10),
                Text(
                  "Shorts",
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 246, 240, 240),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShortImg(img: "assets/images/shinchangif1.gif"),

                  SizedBox(width: 10),
                  ShortImg(img: "assets/images/download (4).jpeg"),

                  SizedBox(width: 10),
                  ShortImg(img: "assets/images/download (3).jpeg"),

                  SizedBox(width: 10),
                  ShortImg(
                    img: "assets/images/0fad0b8f42eb5c290688b1649d590d31.jpg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Stack(
              children: [
                custom_thumbnail(img: "assets/images/jetha-dance.gif"),

                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 100, top: 215, right: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.podcasts, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                circle_con(img: "assets/images/sonysub.jpeg"),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tarak Mehta ka Ooltah..",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 246, 243, 243),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "#jethalal",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 240, 234, 234),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                custom_thumbnail(img: "assets/images/crayon-shin-chan-rock-n-roll-dance-eeirpj1dbdmjzgih.gif"),

                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 100, top: 215, right: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.podcasts, color: Colors.white, size: 16),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                
                circle_con(img: "assets/images/hungama.jpg"),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SHINCHAN",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 246, 243, 243),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "#shinchan#NewEpisode",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 240, 234, 234),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
