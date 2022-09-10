import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/inbox/Activity/controller.dart';
import 'package:yadfly/styles/app_styles.dart';

class InboxActivityScreen extends StatelessWidget {
  InboxActivityScreen({Key? key}) : super(key: key);

  final activityController = Get.put(ActivityController());

  String sumText = "https://web.facebook.com/palashroy.gobindo";

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            "Activity",
            style: headdingThree,
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: raisinBlackColor),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.pending_outlined,
                  size: 25,
                ))
          ]),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              Text(
                "Today",
                style: headding6,
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Expanded(
                flex: 5,
                child: ListView.builder(
                    itemCount: activityController.indexActivity.length,
                    primary: true,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                activityController.indexActivity[index].image1),
                          ),
                          title: Text(
                              activityController.indexActivity[index].title),
                          subtitle: Text(
                              activityController.indexActivity[index].subTitle),
                          trailing: Obx(
                            () => GestureDetector(
                              onTap: () {
                                activityController.isValue++;
                                activityController.onFollowing.value =
                                    !activityController.onFollowing.value;
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: activityController.onFollowing.value
                                      ? AppColors.purpleColor
                                      : Colors.green,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          activityController.onFollowing.value
                                              ? AppColors.primaryWhiteColor
                                              : AppColors.primaryWhiteColor),
                                ),
                                child: Center(
                                  child: Text(
                                    activityController.onFollowing.value
                                        ? "Follow"
                                        : "Following",
                                    style: const TextStyle(
                                        color: AppColors.primaryWhiteColor),
                                  ),
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Text(
                'Yesterday',
                style: headding6,
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Expanded(
                flex: 5,
                child: ListView.builder(
                    itemCount: activityController.indexActivity.length,
                    primary: true,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                activityController.indexActivity[index].image1),
                          ),
                          title: Text(
                              activityController.indexActivity[index].title),
                          subtitle: Text(
                              activityController.indexActivity[index].subTitle),
                          trailing: Obx(
                            () => GestureDetector(
                              onTap: () {
                                activityController.isValue++;
                                activityController.onFollowing.value =
                                    !activityController.onFollowing.value;
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: activityController.onFollowing.value
                                      ? AppColors.purpleColor
                                      : Colors.green,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          activityController.onFollowing.value
                                              ? AppColors.primaryWhiteColor
                                              : AppColors.primaryWhiteColor),
                                ),
                                child: Center(
                                  child: Text(
                                    activityController.onFollowing.value
                                        ? "Follow"
                                        : "Following",
                                    style: const TextStyle(
                                        color: AppColors.primaryWhiteColor),
                                  ),
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
            ]),
      ),
    );
  }
}

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

            primary: Colors.purple, // <-- Button color
            onPrimary: Colors.purpleAccent, // <-- Splash color
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(color: raisinBlackColor, fontSize: 13),
        )
      ],
    );
  }
}
