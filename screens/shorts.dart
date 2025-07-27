import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/controller/likedislike.dart';
import 'package:you_tube/controller/shortscontroller.dart';

class Shorts extends StatelessWidget {
  final Shortscontroller thiscontroller = Get.put(Shortscontroller());
  // final likedislike likedislikecon = Get.put(likedislike());
  final LikeDislikeController controller = Get.put(LikeDislikeController());
  Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: AppColors.secondarycolor,
        appBar: AppBar(
          backgroundColor: AppColors.secondarycolor,
          leading: Image.asset("assets/images/shortslogo.png", height: 80),
          title: Text(
            "Shorts",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.search_rounded, size: 30, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.more_vert, size: 30, color: Colors.white),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              Container(
                height: 660,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondarycolor,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://media1.tenor.com/m/e88HTLkfr_UAAAAC/smile.gif",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 290, top: 225),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              controller.isLiked.value
                                  ? Icons.thumb_up
                                  : Icons.thumb_up_outlined,
                              color: controller.isLiked.value
                                  ? AppColors.secondarycolor
                                  : AppColors.secondarycolor,
                              size: 32,
                            ),
                            onPressed: controller.toggleLike,
                          ),
                          Text(
                            "234k",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          IconButton(
                            icon: Icon(
                              controller.isDisliked.value
                                  ? Icons.thumb_down
                                  : Icons.thumb_down_outlined,
                              color: controller.isDisliked.value
                                  ? AppColors.secondarycolor
                                  : AppColors.secondarycolor,
                              size: 32,
                            ),
                            onPressed: controller.toggleDislike,
                          ),
                          Text(
                            "dislike",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          Icon(Icons.comment, size: 32),
                          Text(
                            "Comment",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          Icon(Icons.share, size: 32),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.secondarycolor,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShKOxIelLhQXulmLDFgcUVFMPZQcc-KeqLA&sr",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Shinchan_Shorts",
                                style: TextStyle(
                                  color: AppColors.secondarycolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                    AppColors.secondarycolor,
                                  ),
                                ),
                                onPressed: () {
                                  // Get.snackbar(
                                  //   backgroundColor: AppColors.primarycolor,
                                  //   "Shinchan_Shorts",
                                  //   "Subscribed😎",
                                  // );
                                  thiscontroller.changeValue();
                                },
                                child: Text(
                                  thiscontroller.mytext.value,

                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          //  SizedBox(width: 30, height: 0),
                          Padding(padding: const EdgeInsets.all(0.8)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "SHINCHAN || 1.8 Millon Views",
                                style: TextStyle(
                                  color: AppColors.secondarycolor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 85),

                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.secondarycolor,

                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShKOxIelLhQXulmLDFgcUVFMPZQcc-KeqLA&sr",
                                    ),

                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(width: 30),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 660,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondarycolor,
                  image: DecorationImage(
                    image: NetworkImage("https://i.imgur.com/j5pI2UE.gif"),
                    fit: BoxFit.fill,
                  ),
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 290, top: 225),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              controller.isLiked.value
                                  ? Icons.thumb_up
                                  : Icons.thumb_up_outlined,
                              color: controller.isLiked.value
                                  ? AppColors.secondarycolor
                                  : AppColors.secondarycolor,
                              size: 32,
                            ),
                            onPressed: controller.toggleLike,
                          ),
                          Text(
                            "234k",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          IconButton(
                            icon: Icon(
                              controller.isDisliked.value
                                  ? Icons.thumb_down
                                  : Icons.thumb_down_outlined,
                              color: controller.isDisliked.value
                                  ? AppColors.secondarycolor
                                  : AppColors.secondarycolor,
                              size: 32,
                            ),
                            onPressed: controller.toggleDislike,
                          ),
                          Text(
                            "dislike",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          Icon(Icons.comment, size: 32),
                          Text(
                            "Comment",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 20),
                          Icon(Icons.share, size: 32),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.secondarycolor,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShKOxIelLhQXulmLDFgcUVFMPZQcc-KeqLA&sr",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "Doraemon_Shorts",
                                style: TextStyle(
                                  color: AppColors.secondarycolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                    AppColors.secondarycolor,
                                  ),
                                ),
                                onPressed: () {
                                  // Get.snackbar(
                                  //   backgroundColor: AppColors.primarycolor,
                                  //   "Doraemon_Shorts",
                                  //   "Subscribed😎",
                                  // );
                                  thiscontroller.changeValue();
                                },
                                child: Text(
                                  thiscontroller.mytext.value,

                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 30, height: 0),
                          Padding(padding: const EdgeInsets.all(0.8)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "DORAEMON || 1.9 Millon Views",
                                style: TextStyle(
                                  color: AppColors.secondarycolor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 70),

                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.secondarycolor,

                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShKOxIelLhQXulmLDFgcUVFMPZQcc-KeqLA&sr",
                                    ),

                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(width: 30),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
