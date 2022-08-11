import 'package:flutter/material.dart';
import 'package:yadfly/constens/size_configs.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  bool obscureText;

  String? Function(String?)? validator;
  String? hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool? filled;
  Color? fillColor;

  CustomTextField({
    Key? key,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.suffixIcon,
    this.hintText,
    this.prefixIcon,
    this.fillColor,
    this.filled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none
            
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          filled: filled,
          fillColor: fillColor,
          prefixIcon: prefixIcon,
          prefixStyle: TextStyle(fontSize: getWidth(17)),
          hintStyle: TextStyle(
            fontSize: getFont(14),
            color: Colors.grey.shade400,
          )),
    );
  }
}
