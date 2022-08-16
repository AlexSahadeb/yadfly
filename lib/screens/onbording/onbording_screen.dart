import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/onbording/onboding_controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

class OnBordingScreen extends StatelessWidget {
  // List<String> onbodingImgs = [
  //   "assets/imgs/onboding1.png",
  //   "assets/imgs/onboding2.png",
  //   "assets/imgs/onboding3.png"
  // ];
  // List<String> title = [
  //   "Discover the finest creator for your business",
  //   "Connect with more than 5M+ Creators",
  //   "Create Genuine UGC Ads with genuine creators"
  // ];
  // List<String> subTitle = [
  //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  // ];
  final onBodingController = Get.put(OnBodingController());
  // PageController pageController = PageController(initialPage: 0);
  // int curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getHeight(50),
              ),
              Obx(
                () => Center(
                  child: Image.asset(
                    onBodingController
                        .onbodingImgs[onBodingController.currentIndex.toInt()],
                    height: getHeight(260),
                    width: getWidth(207),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(60),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      onBodingController
                          .title[onBodingController.currentIndex.toInt()],
                      style: headdingTwo,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  Text(
                    onBodingController
                        .subTitle[onBodingController.currentIndex.toInt()],
                    style: headdingFour,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getHeight(40),
                  ),
                  //dotindicator
                  Obx(
                    () => Center(
                      child: DotsIndicator(
                        dotsCount: onBodingController.onbodingImgs.length,
                        position: onBodingController.currentIndex.toDouble(),
                        decorator: const DotsDecorator(
                            activeColor: purpleColor, color: buttonShapColor),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: getHeight(40),
                  ),

                  CustomButton(
                    buttonText: "Next",
                    textColor: primaryWhiteColor,
                    color: purpleColor,
                    onPressed: () {
                      if (onBodingController.currentIndex == 2) {
                        // go to login page
                        Get.toNamed(welcome);
                      } else {
                        onBodingController.currentIndex + 1;
                      }
                    },
                  ),
                  SizedBox(
                    height: getHeight(12),
                  ),
                  CustomButton(
                    buttonText: "Skip",
                    textColor: purpleColor,
                    color: buttonShapColor,
                    onPressed: () {
                      Get.toNamed(welcome);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

//return SafeArea(
//         child: Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Expanded(
//                 flex: 3,
//                 child: PageView(
//                   controller: pageController,
//                   children: [
//                     onbordingItems("assets/imgs/onboding1.png",
//                         "Discover the finest creator for your business"),
//                     onbordingItems("assets/imgs/onboding2.png",
//                         "Connect with more than 5M+ Creators"),
//                     onbordingItems("assets/imgs/onboding3.png",
//                         "Create Genuine UGC Ads with genuine creators"),
//                   ],
//                 )),
//             Expanded(
//                 flex: 1,
//                 child: Column(
//                   children: [
//                     // Center(
//                     //   child: DotsIndicator(
//                     //     dotsCount: pageController,
//                     //     position: onBodingController.currentIndex.toDouble(),
//                     //     decorator: DotsDecorator(
//                     //         activeColor: purpleColor, color: buttonShapColor),
//                     //   ),
//                     // ),
//                     SizedBox(
//                       height: getHeight(40),
//                     ),
//                     CustomButton(
//                       buttonText: "Next",
//                       textColor: primaryWhiteColor,
//                       color: purpleColor,
//                       onPressed: () {
//                         if (pageController == 2) {
//                           Get.toNamed(login);
//                         } else {
//                           pageController.nextPage(
//                               duration: Duration(seconds: 1),
//                               curve: Curves.ease);
//                         }
//                         // if (onBodingController.currentIndex == 2) {
//                         //   // go to login page
//                         //   Get.toNamed(login);
//                         // } else {
//                         //   onBodingController.currentIndex + 1;
//                         // }
//                       },
//                     ),
//                     SizedBox(
//                       height: getHeight(12),
//                     ),
//                     CustomButton(
//                       buttonText: "Skip",
//                       textColor: purpleColor,
//                       color: buttonShapColor,
//                       onPressed: () {
//                         //onBodingController.currentIndex + 1;
//                       },
//                     ),
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     ));

//   Container onbordingItems(String img, text) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             img,
//             height: getHeight(260),
//             width: getWidth(207),
//           ),
//           SizedBox(
//             height: getHeight(40),
//           ),
//           Container(
//             height: getHeight(5),
//             width: getWidth(40),
//             color: graniteColor,
//           ),
//           SizedBox(
//             height: getHeight(40),
//           ),
//           Text(
//             text,
//             style: headdingOne,
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(
//             height: getHeight(20),
//           ),
//           Text(
//             "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
//             style: headdingFour,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
}
