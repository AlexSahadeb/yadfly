import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/styles/app_styles.dart';

class HashtagScreen extends StatelessWidget {
  const HashtagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhiteColor,
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              onTap: () {
                Get.toNamed(hashTagDetailsScreen);
              },
              leading: const CircleAvatar(
                backgroundColor: purpleColor,
                child: Center(
                    child: Icon(
                  Icons.tag,
                  color: primaryWhiteColor,
                )),
              ),
              title: Text(
                "#angllinaa",
                style: headding6,
              ),
              subtitle: const Text(
                "352M Posts",
              ),
            );
          }),
    );
  }
}
