import 'package:flutter/material.dart';

class UserAccountModel {
  String profile, name;
  String subName;
  IconData? icon;
  UserAccountModel(
      {required this.profile,
      required this.name,
      required this.subName,
      this.icon});
}

List<UserAccountModel> userAccount = [
  UserAccountModel(
      profile: "assets/imgs/profile.png",
      name: "John Deo",
      subName: "App Developer",
      icon: Icons.radio_button_checked),
  UserAccountModel(
      profile: "assets/imgs/profile.png",
      name: "John Deo",
      subName: "App Developer",
      icon: Icons.radio_button_unchecked),
  UserAccountModel(
      profile: "assets/imgs/profile.png",
      name: "John Deo",
      subName: "App Developer",
      icon: Icons.radio_button_unchecked),
  UserAccountModel(
      profile: "assets/imgs/profile.png",
      name: "John Deo",
      subName: "App Developer",
      icon: Icons.radio_button_unchecked),
  UserAccountModel(
      profile: "assets/imgs/profile.png",
      name: "John Deo",
      subName: "App Developer",
      icon: Icons.radio_button_unchecked),
  UserAccountModel(
      profile: "assets/imgs/profile.png",
      name: "John Deo",
      subName: "App Developer",
      icon: Icons.radio_button_unchecked),
];
