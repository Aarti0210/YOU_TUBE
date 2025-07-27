import 'package:flutter/material.dart';
import 'package:you_tube/colors/app_colors.dart';
import 'package:you_tube/screens/tabs.dart';


class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondarycolor,
      appBar: AppBar(
        backgroundColor: AppColors.secondarycolor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tabs()),
              );
              // Get.toNamed(AppRoutes.tabs);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            color: const Color.fromARGB(255, 248, 242, 242),
            fontWeight: FontWeight.w400,
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(Icons.cast, color: Colors.white, size: 25),

                SizedBox(width: 15),
                Icon(Icons.search, size: 30, color: Colors.white),
                SizedBox(width: 15),
                Icon(Icons.more_vert, size: 30, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(40, 35),
                  ),

                  onPressed: () {},

                  child: Text(
                    "All",
                    style: TextStyle(color: AppColors.secondarycolor),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 28, 27, 27),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(40, 35),
                  ),

                  onPressed: () {},
                  child: Text("Mention", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Today",
              style: TextStyle(
                color: AppColors.subtext,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "•",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 33, 75, 243),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondarycolor,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShKOxIelLhQXulmLDFgcUVFMPZQcc-KeqLA&sr",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Shinchan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "#shinchan#cartoon#new",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "20 hours ago",
                      style: TextStyle(
                        color: AppColors.subtext,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    color: AppColors.secondarycolor,

                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.ytimg.com/vi/qV0PIc5rjPA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLChvpLdm8mDtyyHEpRpv-2RrRxXng",
                      ),

                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Icon(Icons.more_vert, color: Colors.white, size: 20),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Older",
              style: TextStyle(
                color: AppColors.subtext,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "•",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 33, 75, 243),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondarycolor,
                    image: DecorationImage(
                      image: AssetImage("assets/images/disneygif.gif"),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Doraemon",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "#doreamon#cartoon#n...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "13 days ago",
                      style: TextStyle(
                        color: AppColors.subtext,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    color: AppColors.secondarycolor,

                    image: DecorationImage(
                      image: AssetImage("assets/images/doreamon.jpg"),

                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Icon(Icons.more_vert, color: Colors.white, size: 20),
              ],
            ),

            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "•",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 33, 75, 243),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondarycolor,
                    image: DecorationImage(
                      image: AssetImage("assets/images/CN.gif"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "For you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "TomAndJerry",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "#tomandjerry#cartoon#...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "15 days ago",
                      style: TextStyle(
                        color: AppColors.subtext,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    color: AppColors.secondarycolor,

                    image: DecorationImage(
                      image: AssetImage("assets/images/tomandjerry.jpeg"),

                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Icon(Icons.more_vert, color: Colors.white, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
