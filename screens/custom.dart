import 'package:flutter/material.dart';
import 'package:you_tube/customwidgets/customButton.dart';
import 'package:you_tube/customwidgets/custom_con.dart';
import 'package:you_tube/customwidgets/custom_text.dart';


class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: cus_button(buttonname: "hello", onPress: () {}),
          ),
          cus_con(img: "assets/images/OC.png"),
          cus_text(size: 40, text: "Hello"),
        ],
      ),
    );
  }
}
