import 'package:flutter/material.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';

class CustomSocialMediaButton extends StatelessWidget {
  String buttonText;
  String image;
  Function() onPressed;

  CustomSocialMediaButton(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.maxFinite,
        height: getHeight(70),
        decoration: BoxDecoration(
            color: otpFillColor,
            border: Border.all(width: 2, color: buttonShapColor),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              SizedBox(
                width: getWidth(10),
              ),
              Text(
                buttonText,
                style:
                    TextStyle(color: raisinBlackColor, fontSize: getFont(16)),
              )
            ],
          ),
        ),
      ),
    );

    // return ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //         elevation: 0,
    //         primary: color,
    //         minimumSize: const Size(380, 55),
    //         maximumSize: const Size(380, 55),
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(30))),
    //     child: Padding(
    //       padding: const EdgeInsets.all(15),
    //       child: Text(
    //         buttonText,
    //         style: TextStyle(
    //           fontSize: 16,
    //         ),
    //       ),
    //     ),
    //     onPressed: onPressed);
  }
}
