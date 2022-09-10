import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SettingController extends GetxController {
  RxBool check = false.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => check.value = check.value ? false : true;
}
