import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:you_tube/controller/count_controller.dart';

class Example extends StatelessWidget {
  final obj = Get.put(CountController());
  Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${obj.count}"),
              ElevatedButton(
                onPressed: () {
                  obj.add();
                },
                child: Text("Add"),
              ),
              Text("${obj.name}"),
              OutlinedButton(
                onPressed: () {
                  obj.updatestring();
                },
                child: Text("Change"),
              ),
            ],
          ),
        );
      }),
    );
  }
}
