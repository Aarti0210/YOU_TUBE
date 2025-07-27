// import 'package:get/get.dart';

// class LikeDislikeController extends GetxController {
//   RxBool isLiked = false.obs;
//   RxBool isDisliked = false.obs;

//   void toggleLike() {
//     isLiked.value = true;
//     isDisliked.value = false;
//   }

//   void toggleDislike() {
//     isDisliked.value = true;
//     isLiked.value = false;
//   }
// }
import 'package:get/get.dart';

class LikeDislikeController extends GetxController {
  RxBool isLiked = false.obs;
  RxBool isDisliked = false.obs;

  void toggleLike() {
    if (isLiked.value) {
      isLiked.value = false;
    } else {
      isLiked.value = true;
      isDisliked.value = false; // Unfill dislike
    }
  }

  void toggleDislike() {
    if (isDisliked.value) {
      isDisliked.value = false;
    } else {
      isDisliked.value = true;
      isLiked.value = false;
    }
  }
}
