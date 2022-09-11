import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/screens/mainnavbar/components/search/itemsearch/accountdetails/keywordSerachAccount/conponents/parson/parson_controller.dart';
import 'package:yadfly/styles/app_styles.dart';

class ParsonScreen extends StatelessWidget {
  ParsonScreen({Key? key}) : super(key: key);

  final parsonController = Get.put(ParsonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqZZYSsnncqDhroX4Ud9rgHCxpDeyLSN5PdG71BuDAk-ulL4CQCFtjL4lKVH26UIW9EOo&usqp=CAU',
                  ),
                  radius: 25,
                ),
                title: Text(
                  "angllina",
                  style: headding6,
                ),
                subtitle: const Text(
                  "Web Designer",
                ),
                trailing: Obx(
                      () => GestureDetector(
                    onTap: () {
                      parsonController.isValue++;
                      parsonController.onFollowing.value =
                      !parsonController.onFollowing.value;
                    },
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: parsonController.onFollowing.value
                            ? AppColors.purpleColor
                            : Colors.green,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 2,
                            color:
                            parsonController.onFollowing.value
                                ? AppColors.primaryWhiteColor
                                : AppColors.primaryWhiteColor),
                      ),
                      child: Center(
                        child: Text(
                          parsonController.onFollowing.value
                              ? "Follow"
                              : "Following",
                          style: const TextStyle(
                              color: AppColors.primaryWhiteColor),
                        ),
                      ),
                    ),
                  ),
                )
             );
          }),
    );
  }
}
