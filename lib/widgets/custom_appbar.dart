import 'package:flutter/material.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/styles/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? appBarTitle;
  List<Widget>? actions;
  CustomAppBar({
    Key? key,
    this.appBarTitle,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appBarTitle!),
      iconTheme: IconThemeData(color: raisinBlackColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
