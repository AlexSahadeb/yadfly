import 'package:flutter/material.dart';
import 'package:yadfly/constens/app_colors.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  Function() onPressed;
  Color color;
  Color textColor;
  CustomButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: color,
            minimumSize: const Size(380, 55),
            maximumSize: const Size(380, 55),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child:  Text(
          buttonText,
          style: TextStyle(fontSize: 16, color: textColor),
        ),
        onPressed: onPressed);
  }
}
