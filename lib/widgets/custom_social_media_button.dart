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
        height: 70,
        decoration: BoxDecoration(
            color: AppColors.otpFillColor,
            border: Border.all(width: 2, color: AppColors.buttonShapColor),
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
  }
}

class SocialMediaButton extends StatelessWidget {
  String image;
  Function() onPressed;

  SocialMediaButton({Key? key, required this.onPressed, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 65,
        height: 70,
        decoration: BoxDecoration(
            color: AppColors.otpFillColor,
            border: Border.all(width: 2, color: AppColors.buttonShapColor),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Image.asset(image),
        ),
      ),
    );
  }
}
