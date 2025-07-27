import 'package:flutter/material.dart';

class counterapplication extends StatefulWidget {
  const counterapplication({super.key});

  @override
  State<counterapplication> createState() => counterapplicationState();
}

class counterapplicationState extends State<counterapplication> {
  int num = 0;
  Future<void> _increment() async {
    for (int i = 0; i <= 20; i++) {
      if (i % 2 == 0) {
        setState(() {
          num = i;
          print(num);
        });

        await Future.delayed(Duration(seconds: 2));
      }
    }
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
          Center(child: Text("$num", style: TextStyle(fontSize: 40))),
          FloatingActionButton(
            onPressed: () {
              _increment();
            },
            child: Text("Auto"),
          ),
        ],
      ),
    );
  }
}
