import 'package:get/get.dart';

class MainNavBarController extends GetxController {
  var tabIndex = 0;
  var isActive = true.obs;
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
