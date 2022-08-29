import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/styles/app_styles.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhiteColor,
      body: ListView.builder(
          primary: true,
          itemCount: 30,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              onTap: () {
                Get.toNamed(locationMapScreen);
              },
              leading: const CircleAvatar(
                backgroundColor: purpleColor,
                child: Center(
                    child: Icon(
                  Icons.location_on_rounded,
                  color: primaryWhiteColor,
                )),
              ),
              title: Text(
                "Angelina, Santa Carina ",
                style: headding6,
              ),
              subtitle: const Text(
                "2972 Westheimer Rd. Santa Ana, Illinois 85486",
              ),
            );
          }),
    );
  }
}
