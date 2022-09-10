import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/constens/app_colors.dart';

class DialButton extends StatelessWidget {
  DialButton(
      {Key? key, required this.icon, required this.pressed, required this.text})
      : super(key: key);
  String icon;
  String text;
  Function() pressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: pressed,
          child: SvgPicture.asset(
            icon,
            color: Colors.white,
          ),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            primary: AppColors.brightLilacColor, // <-- Button color
            onPrimary: Colors.grey[200], // <-- Splash color
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
              color: raisinBlackColor,
              fontSize: 13,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
