import 'package:draggable_widget/draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/imgs/woman.jpg",
            fit: BoxFit.cover,
          ),
          DecoratedBox(
              decoration: BoxDecoration(color: Colors.black.withOpacity(.3))),
          DraggableWidget(
            bottomMargin: 80,
            topMargin: 20,

            intialVisibility: true,
            horizontalSpace: 20,
            verticalSpace: 20,
            shadowBorderRadius: 100,
            dragAnimationScale: 1.1,
            normalShadow: const BoxShadow(
                color: Colors.transparent, offset: Offset(0, 0), blurRadius: 2),

            child: Container(
              height: 160,
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/imgs/man.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
            initialPosition: AnchoringPosition.topRight,
            // dragController: dragController,
          ),
          const Spacer(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/CloseSquare.svg",
                      color: AppColors.primaryWhiteColor,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      shape: const CircleBorder(),

                      primary: AppColors.brightLilacColor, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  SizedBox(
                    width: getWidth(20),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/callV.svg",
                      color: AppColors.primaryWhiteColor,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(22),
                      shape: const CircleBorder(),

                      primary: Colors.yellow, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  SizedBox(
                    width: getWidth(20),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "assets/icons/VolumeUp.svg",
                      color: AppColors.primaryWhiteColor,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(22),
                      shape: const CircleBorder(),

                      primary: Colors.blue, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
