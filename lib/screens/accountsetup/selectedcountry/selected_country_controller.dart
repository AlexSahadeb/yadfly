import 'package:get/get.dart';

class SelectedCountryController extends GetxController {
  List<String> countryName = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Argentina",
    "Armenia",
    "United States",
    "India",
    "Iran",
    "Iraq",
    "Ireland",
  ];
  List<String> countryCode = [
    "AF",
    "AL",
    "DZ",
    "AD",
    "AO",
    "AR",
    "AM ",
    "US",
    "In",
    "IR",
    "IQ",
    "IE",
  ];
  List<String> countryFlag = [
    "assets/imgs/afghanistan.png",
    "assets/imgs/albania.png",
    "assets/imgs/algeria.png",
    "assets/imgs/andorra.png",
    "assets/imgs/angola.png",
    "assets/imgs/argentina.png",
    "assets/imgs/armenia.png",
    "assets/imgs/us.png",
    "assets/imgs/india.png",
    "assets/imgs/iran.png",
    "assets/imgs/iraq.png",
    "assets/imgs/ireland.png",
  ];
  String search = "";

  var check = false.obs;
  var isActive = 0.obs;
}
