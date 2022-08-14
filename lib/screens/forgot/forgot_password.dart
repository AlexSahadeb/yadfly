import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/forgot/controller/forgot_controller.dart';
import 'package:yadfly/screens/verify/verify_screen.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

import '../../constens/app_colors.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({Key? key}) : super(key: key);

  ForgotController _forgotController=Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        title: const Text(
          'Forgot Password',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: raisinBlackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset("assets/imgs/forget.png",
                height: getHeight(200),
                width: getWidth(305),
              )),
              SizedBox(
                height: getHeight(53),
              ),
              const Text(
                'Select which contact details should we use to reset your password',
                style: TextStyle(fontSize: 16, color: raisinBlackColor),
              ),
              SizedBox(
                height: getHeight(24),
              ),
              Visibility(
                visible: _forgotController.isVisibility.value,
                  child: Container(
                    height: getHeight(128),
                    width: getWidth(380),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: brightLilacColor, width: 2)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/imgs/sms_icon.png"),
                            radius: 30,
                          ),
                        ),
                        SizedBox(
                          width: getHeight(24),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "via SMS:",
                              style:
                                  TextStyle(fontSize: 14, color: raisinBlackColor),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '+6282******92',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: raisinBlackColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: getHeight(24),
              ),
              Visibility(
                visible: _forgotController.isVisibility.value,
                  child: Container(
                    height: getHeight(128),
                    width: getWidth(380),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: brightLilacColor, width: 2)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/imgs/email.png"),
                            radius: 30,
                          ),
                        ),
                        SizedBox(
                          width: getHeight(24),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "via Email: ",
                              style:
                                  TextStyle(fontSize: 14, color: raisinBlackColor),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ex**cl@yourdomain.com',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: raisinBlackColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              SizedBox(
                height: getHeight(53),
              ),
              Center(
                child: CustomButton(
                    color: purpleColor,
                    textColor: primaryWhiteColor,
                    buttonText:"Continue",
                    onPressed: () {
                      Get.to(const VerifyScreen());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
