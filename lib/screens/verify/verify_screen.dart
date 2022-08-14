import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/newpassword/new_password.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

import '../../constens/app_colors.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: getHeight(250.5),
              ),
               const Text(
                "Code has been send to +6282*****39",
                style: TextStyle(fontSize: 16, color: raisinBlackColor),
              ),
              SizedBox(
                height: getHeight(60),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: getWidth(78),
                    height: getHeight(61),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: purpleColor, width: 2)),
                    child: const Center(
                        child: Text(
                      "8",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: raisinBlackColor),
                    )),
                  ),
                  SizedBox(
                    width: getWidth(16),
                  ),
                  Container(
                    width: getWidth(71),
                    height: getHeight(61),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: purpleColor, width: 2)),
                    child: const Center(
                        child: Text(
                      "5",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: raisinBlackColor),
                    )),
                  ),
                  SizedBox(
                    width: getWidth(16),
                  ),
                  Container(
                    width: getWidth(78),
                    height: getHeight(61),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: purpleColor, width: 2)),
                    child: const Center(
                        child: Text(
                      "7",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: raisinBlackColor),
                    )),
                  ),
                  SizedBox(
                    width: getWidth(16),
                  ),
                  Container(
                    width: getWidth(78),
                    height: getHeight(61),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: purpleColor, width: 2)),
                    child: const Center(
                        child: Text(
                      "9",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: raisinBlackColor),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(60),
              ),
              const Center(
                  child: Text(
                'Resend code in 59 s',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: raisinBlackColor),
              )),
              SizedBox(
                height: getHeight(241),
              ),
              CustomButton(
                  color: purpleColor,
                  textColor: primaryWhiteColor,
                  buttonText: "Verify",
                  onPressed: () {
                   Get.to( NewPassword());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
