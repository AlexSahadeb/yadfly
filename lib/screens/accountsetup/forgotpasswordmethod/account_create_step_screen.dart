import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/accountsetup/forgotpasswordmethod/account_create_step_controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

class ForgotPasswordMethodScreen extends StatelessWidget {
  ForgotPasswordMethodScreen({Key? key}) : super(key: key);
  AccountCreateStepController accountCreateStepController =
      Get.put(AccountCreateStepController());
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: raisinBlackColor)),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: CustomButton(
              color: purpleColor,
              textColor: primaryWhiteColor,
              buttonText: "Continue",
              onPressed: () {
                print("Continue");
                Get.toNamed(selectedcountry);
              }),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getHeight(46),
                  ),
                  Text(
                    "Are you a Creator or a \nCompany ?",
                    style: TextStyle(
                        fontSize: getFont(24),
                        fontWeight: FontWeight.w700,
                        color: raisinBlackColor),
                  ),
                  SizedBox(
                    height: getHeight(30),
                  ),
                  Obx(
                    () => GestureDetector(
                      onTap: () {
                        accountCreateStepController.isselected.value =
                            !accountCreateStepController.isselected.value;
                      },
                      child: Container(
                        height: getHeight(140),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 2,
                                color: accountCreateStepController
                                            .isselected.value ==
                                        false
                                    ? const Color(0xFFFFF1F3)
                                    : const Color(0xFFA020F0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/imgs/autoLayoutHorizontal1.png",
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
                                const Text("We are a"),
                                Text(
                                  "Company",
                                  style: headdingThree,
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
                      onTap: () => accountCreateStepController.isselected.value
                          ? accountCreateStepController.isselected.value =
                              !accountCreateStepController.isselected.value
                          : null,
                      child: Container(
                        height: getHeight(140),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 2,
                                color: accountCreateStepController
                                            .isselected.value ==
                                        true
                                    ? const Color(0xFFFFF1F3)
                                    : const Color(0xFFA020F0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/imgs/autoLayoutHorizontal2.png",
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
                                const Text("I am a"),
                                Text(
                                  "Creator",
                                  style: headdingThree,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(300),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
