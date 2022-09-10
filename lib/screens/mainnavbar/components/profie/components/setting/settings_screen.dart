import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/components/setting/settings_controller.dart';
import 'package:yadfly/styles/app_styles.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  final settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Settings',
          style: headdingThree,
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: raisinBlackColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
                onTap: () {
                  print('follow');
                },
                leading: SvgPicture.asset(
                  'assets/icons/parson_add_outline.svg',
                ),
                title: Text("Follow and invite friends", style: headding6)),
            ListTile(
                onTap: () {
                  print('Notification');
                },
                leading: SvgPicture.asset(
                  'assets/icons/notification_outline.svg',
                ),
                title: Text("Notification", style: headding6)),
            ListTile(
                onTap: () {
                  print('Account');
                },
                leading: SvgPicture.asset(
                  'assets/icons/account_outline.svg',
                ),
                title: Text("Account", style: headding6)),
            ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/mode_outline.svg',
                ),
                title: Text("Dark Theme", style: headding6),
                trailing: Obx(
                  () => Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.grey,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      onChanged: (val) => settingController.toggle(),
                      value: settingController.check.value),
                )),
            SizedBox(
              height: getHeight(30),
            ),
            Container(
              height: 2,
              width: double.maxFinite,
              color: Colors.grey[200],
            ),
            SizedBox(
              height: getHeight(25),
            ),
            InkWell(
              onTap: () {
                print("Add or Switch Account");
              },
              child: const Text(
                'Add or Switch Account',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: getHeight(22),
            ),
            InkWell(
              onTap: () {
                print("Logout john_dose");
              },
              child: const Text(
                'Logout john_dose',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: getHeight(22),
            ),
            InkWell(
              onTap: () {
                print("Logout All Account");
              },
              child: const Text(
                'Logout All Account',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
