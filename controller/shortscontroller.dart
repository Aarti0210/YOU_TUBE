
import 'package:get/get.dart';
import 'package:you_tube/colors/app_colors.dart';

class Shortscontroller extends GetxController {
  var mytext = "Subscribe".obs;

  void changeValue() {
    if (mytext.value == "Subscribed😎") {
      mytext.value = "Subscribe";

      Get.snackbar(
        backgroundColor: AppColors.subtext,
        "❌ Unsubscribed",
        "You have unsubscribed.",
      );
    } else {
      mytext.value = "Subscribed😎";
      Get.snackbar(
        backgroundColor: AppColors.primarycolor,
        "✅ Subscribed",
        "You have successfully subscribed.",
      );
    }
  }
}
