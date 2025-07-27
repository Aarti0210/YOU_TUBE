import 'package:flutter/material.dart';

class Center extends StatelessWidget {
  const Center({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 208, 196, 196),
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
    );
  }
}
