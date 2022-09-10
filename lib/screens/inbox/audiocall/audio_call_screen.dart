import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';

class AudioCallScreen extends StatelessWidget {
  const AudioCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              const Text(
                "Anna Wiliums",
                style: TextStyle(
                    color: AppColors.primaryWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "calling.....",
                style:
                    TextStyle(color: AppColors.primaryWhiteColor, fontSize: 16),
              ),
              SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(30),
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Colors.white.withOpacity(0.02),
                      Colors.white.withOpacity(0.05)
                    ], stops: const [
                      0.5,
                      1
                    ])),
                child: Image.asset(
                  "assets/imgs/profile.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DialButton(
                          icon: "assets/icons/audio_outline.svg",
                          pressed: () {},
                          text: "Audio"),
                      DialButton(
                          icon: "assets/icons/VolumeUp.svg",
                          pressed: () {},
                          text: "Microphone"),
                      DialButton(
                          icon: "assets/icons/callV_outline.svg",
                          pressed: () {},
                          text: "Video"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DialButton(
                          icon: "assets/icons/message_outline.svg",
                          pressed: () {},
                          text: "Message"),
                      DialButton(
                          icon: "assets/icons/Icon User.svg",
                          pressed: () {},
                          text: "Add Contrct"),
                      DialButton(
                          icon: "assets/icons/Icon Voicemail.svg",
                          pressed: () {},
                          text: "Voice"),
                    ],
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  "assets/icons/call_end.svg",
                  color: AppColors.primaryWhiteColor,
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(22),
                  shape: const CircleBorder(),

                  primary: Colors.red, // <-- Button color
                  onPrimary: Colors.white.withOpacity(0.1), // <-- Splash color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialButton extends StatelessWidget {
  DialButton(
      {Key? key, required this.icon, required this.pressed, required this.text})
      : super(key: key);
  String icon;
  String text;
  Function() pressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            color: AppColors.primaryWhiteColor,
            width: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: AppColors.primaryWhiteColor, fontSize: 13),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(22),
        shape: const CircleBorder(),

        primary: Colors.transparent, // <-- Button color
        onPrimary: Colors.white.withOpacity(0.1), // <-- Splash color
      ),
    );
  }
}
