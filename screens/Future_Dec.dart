import 'package:flutter/material.dart';

class dec extends StatefulWidget {
  const dec({super.key});

  @override
  State<dec> createState() => _decState();
}

class _decState extends State<dec> {
  //int num = 0;

  // Future<void> _decrement() async {
  //   for (int i = 0; i < 100; i++) {
  //     if (i % 2 == 0) {
  //       setState(() {
  //         i = num;
  //         print(num);
  //       });

  //       await Future.delayed(Duration(seconds: 1));
  //     }
  //   }
  // }

  //String message = "Waiting";
  // Future<String> getdata() async {
  //   return Future.delayed(Duration(seconds: 3), () {
  //     return "Hello";
  //   });
  // }

  double grade = 0;

  Future<double> getExtradata() async {
    return Future.delayed(Duration(seconds: 2), () {
      return 85.90;
    });
  }

  Future<void> fetchdata() async {
    setState(() {
      grade = 0.00;
    });
    double res = await getExtradata();
    setState(() {
      grade = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Function"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("$grade", style: TextStyle(fontSize: 40))),
          FloatingActionButton(
            onPressed: () {
              fetchdata();
            },
            child: Text("Auto"),
          ),
        ],
      ),
    );
  }
}
