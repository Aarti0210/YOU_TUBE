import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt count = 0.obs;
  RxString name = "Aarti".obs;

  void add() {
    count++;
  }

  void updatestring() {
    if (name.value == "Aarti") {
      name.value = "Mustare";
    } else {
      name.value = "Aarti";
    }
  }
}
