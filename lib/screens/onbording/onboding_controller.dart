import 'package:get/get.dart';

class OnBodingController extends GetxController {
  List<String> onbodingImgs = [
    "assets/imgs/onboding1.png",
    "assets/imgs/onboding2.png",
    "assets/imgs/onboding3.png"
  ];
  List<String> title = [
    "Discover the finest creator for your business",
    "Connect with more than 5M+ Creators",
    "Create Genuine UGC Ads with genuine creators"
  ];
  List<String> subTitle = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  ];

  var currentIndex = 0.obs;
}
