import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/forgot/controller/forgot_controller.dart';

import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

import '../../constens/app_colors.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final _forgotController = Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        title: Text(
          'Forgot Password',
          style: headdingThree,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
            color: AppColors.purpleColor,
            textColor: AppColors.primaryWhiteColor,
            buttonText: "Continue",
            onPressed: () {
              Get.toNamed(verify);
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                "assets/imgs/forget.png",
                height: 200,
                width: 305,
              )),
              SizedBox(
                height: getHeight(53),
              ),
              Text(
                'Select which contact details should we use to reset your password',
                style: headdingFour,
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    _forgotController.isSelected.value =
                        !_forgotController.isSelected.value;
                  },
                  child: Container(
                    height: getHeight(140),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color: _forgotController.isSelected.value == false
                                ? const Color(0xFFFFF1F3)
                                : const Color(0xFFA020F0))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/imgs/sms.png",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(15),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("via SMS"),
                            Text(
                              "+64665****125",
                              style: headding6,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () => _forgotController.isSelected.value
                      ? _forgotController.isSelected.value =
                          !_forgotController.isSelected.value
                      : null,
                  child: Container(
                    height: getHeight(140),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 2,
                            color: _forgotController.isSelected.value
                                ? const Color(0xFFFFF1F3)
                                : const Color(0xFFA020F0))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/imgs/email.png",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          width: getWidth(15),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("via Email"),
                            Text(
                              "abc*****@gmail.com",
                              style: headding6,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
