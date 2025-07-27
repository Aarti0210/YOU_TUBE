import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/controller/shortscontroller.dart';


class Playing extends StatelessWidget {
   Playing({super.key});


  final Shortscontroller thiscontroller = Get.put(Shortscontroller());

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 208, 196, 196),
      //   //leading: Image.asset("assets/images/youtubrgif.png"),
      //   title: Text(
      //     "Youtube",
      //     style: TextStyle(
      //       color: const Color.fromARGB(255, 248, 242, 242),
      //       fontWeight: FontWeight.w700,
      //     ),
      //   ),
      //   actions: [
      //     Icon(Icons.cast, color: Colors.white, size: 25),
      //     SizedBox(width: 15),
      //     Icon(Icons.notifications, color: Colors.white, size: 25),
      //     SizedBox(width: 15),
      //     Icon(Icons.search, color: Colors.white, size: 25),
      //     SizedBox(width: 15),
      //   ],
      // ),/
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         // cus_thumbnail(img: "assets/images/crayon-shin-chan-rock-n-roll-dance-eeirpj1dbdmjzgih.gif",
         Container(
           height: screenheight * 0.4,
      width: screenwidth * 1.1,
      decoration: BoxDecoration(
        color: AppColors.secondarycolor,

        image: DecorationImage(
          image: AssetImage("assets/images/crayon-shin-chan-rock-n-roll-dance-eeirpj1dbdmjzgih.gif"),

          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
      ),


           child:   Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 32,
                    color: Colors.white,
                  ),
                  SizedBox(width: 150),
                  Icon(Icons.play_arrow_rounded, size: 28, color: Colors.white),
                  SizedBox(width: 18),
                  Icon(Icons.cast, size: 28, color: Colors.white),
                  SizedBox(width: 18),
                  Icon(Icons.closed_caption, size: 28, color: Colors.white),
                  SizedBox(width: 18),
                  Icon(Icons.settings, size: 28, color: Colors.white),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Shinchan in hindi full episode | SHINCHAN NEW EPISODE |",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              text: "3,2243 views   10h ago  #ShinchanHindi  ",
              style: TextStyle(
                color: AppColors.subtext,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),

              children: [
                TextSpan(
                  text: "...more",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 38,
                width: 38,
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
                "Shinchan_FAN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  thiscontroller.changeValue();
                },
                child: Text(
                  thiscontroller.mytext.value,

                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
