import 'package:get/get.dart';

class Controller extends GetxController{
  var bookmark = false.obs;
  void change() {
    if (bookmark.value) {
      bookmark.value = false;
    } else {
      bookmark.value = true;
    }
  }
}