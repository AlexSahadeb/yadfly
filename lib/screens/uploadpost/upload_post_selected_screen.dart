import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/styles/app_styles.dart';

class UploadPostSelectedScreen extends StatelessWidget {
  const UploadPostSelectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.disabled_by_default_outlined)),
        title: Text(
          "New Post",
          style: headdingThree,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
                color: AppColors.raisinBlackColor,
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
    ));
  }
}
