import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/customwidgets/library_Elevated.dart';
import 'package:you_tube/customwidgets/librarycon.dart';



class Library extends StatelessWidget {
  const Library({super.key});

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        actions: [
          Icon(Icons.cast, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white, size: 25),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.white, size: 25),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/image copy 2.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                 

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Animation_Studio",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RichText(
                          text: TextSpan(
                            text: "@animations  •  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),

                            children: [
                              TextSpan(
                                text: "View channel >",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.subtext,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    libra_Elevated(
                      buttonname: "Switch account",
                      onPress: () {},
                    ),
                    SizedBox(width: 10),
                    libra_Elevated(
                      buttonname: "Google account",
                      onPress: () {},
                    ),
                    SizedBox(width: 10),
                    libra_Elevated(
                      buttonname: "Turn on Incognito",
                      onPress: () {},
                    ),

                    SizedBox(width: 10),
                    libra_Elevated(buttonname: "Share Channel", onPress: () {}),

                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 33,
                    width: 98,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                     LibraryCon(img: "assets/images/shinchan1.png"),

                        Row(
                          children: [
                            Text(
                              "SHINCHAN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "#newEp #Hungama  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "HUNGAMA TV ",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LibraryCon(img: "assets/images/Doremon1.png"),

                        Row(
                          children: [
                            Text(
                              "DOREAMON",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "#newEp #Disney...  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Disney ",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       LibraryCon(img: "assets/images/TMKOC.png"),
                        Row(
                          children: [
                            Text(
                              "Jetha ne....",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "#newEp #SonySab  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "SONYSAB",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LibraryCon(img: "assets/images/mp.png"),

                        Row(
                          children: [
                            Text(
                              "MOTU PATLU",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "Snow World ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "NICK",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LibraryCon(img: "assets/images/OC.png"),

                        Row(
                          children: [
                            Text(
                              "OGGY AND..",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "#Oggy#cockroches ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "CARTOON NETWORK",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Playlist",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 75),
                  Icon(Icons.add, color: Colors.white),
                  SizedBox(
                    height: 33,
                    width: 98,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LibraryCon(img: "assets/images/LV.png"),

                        Row(
                          children: [
                            Text(
                              "Liked Videos",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 45),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "Private",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       LibraryCon(img: "assets/images/Screenshot 2025-07-03 185023.png"),
                        Row(
                          children: [
                            Text(
                              "Watch later",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),

                        Text(
                          "Private",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       LibraryCon(img: "assets/images/Screenshot 2025-07-03 190054.png"),
                        Row(
                          children: [
                            Text(
                              "Playlist 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 64),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                        Text(
                          "Private ",
                          style: TextStyle(
                            color: AppColors.subtext,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       LibraryCon(img: "assets/images/Screenshot 2025-07-03 185603.png"),

                        Row(
                          children: [
                            Text(
                              "New Playlist",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Your Videos",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.download, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Downloads",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 180),
                  Icon(Icons.check_box, color: Colors.white, size: 24),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Budget",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 0.5,
                width: double.infinity,
                color: AppColors.subtext,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.movie, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Your Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.workspace_premium, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Youtube Premium",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 0.5,
                width: double.infinity,
                color: AppColors.subtext,
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.timeline, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Time Watched",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.help, color: Colors.white, size: 24),
                  SizedBox(width: 18),
                  Text(
                    "Help and feedback",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
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
