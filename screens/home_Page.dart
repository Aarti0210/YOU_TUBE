import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/customwidgets/custom_thumbnail.dart';
import 'package:you_tube/customwidgets/custtom_con_shorts.dart';
import 'package:you_tube/customwidgets/subscription_container.dart';
import 'package:you_tube/routes/App_Routes.dart';
import 'package:you_tube/routes/app_routes.dart' hide AppRoutes;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePagestate();
}

class _HomePagestate extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,

      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset("assets/images/youtubrgif.png"),
        ),
        title: Text(
          "Youtube",
          style: TextStyle(
            color: const Color.fromARGB(255, 248, 242, 242),
            fontWeight: FontWeight.w700,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, AppRoutes.notification);
                    Get.toNamed(AppRoutes.notify);
                  },
                  icon: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                ),

                SizedBox(width: 10),
                Icon(Icons.search, size: 30, color: Colors.white),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  //Navigator.pushNamed(context, AppRoutes.play);
                  Get.toNamed(AppRoutes.playing);
                },
                child: 
                custom_thumbnail(img: "assets/images/image copy 5.png" ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  circle_con(img: "assets/images/hungama.jpg"),

                  SizedBox(width: 20),
                  Column(
                    //mainAxisAlignment:MainAxisAlignment.start,
                    //cross is left to right..while main is top to bottom
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shinchan",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 246, 243, 243),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "New Episodes Streaming Now!!!",
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
              SizedBox(width: 20, height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 14, 13, 13),
                    ),
                    height: 40,
                    width: 40,
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Youtube_shorts_icon.svg/1649px-Youtube_shorts_icon.svg.png",
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Shorts",
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 246, 240, 240),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 190)),
                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShortImg(
                      img: "assets/images/bde03a1276ffaee820fbdc2d7d63f37b.jpg",
                    ),

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
              SizedBox(height: 20),
              custom_thumbnail(img: "assets/images/motu patlu wallpaper.jpeg"),
               SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 20),
                  circle_con(img: "assets/images/giphy.gif"),
                  SizedBox(width: 20),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MOTU PATLU",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "#motuPatlu #Nicklodeon",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              custom_thumbnail(img: "assets/images/doreamon.jpg"),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 20),
                  circle_con(img: "assets/images/disneygif.gif"),
                  SizedBox(width: 20),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DOREAMON",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "#doreamon #disney",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
