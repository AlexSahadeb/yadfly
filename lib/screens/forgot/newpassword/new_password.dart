import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';
import 'controller/new_password_controller.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);

  final _newPasswordController = Get.put(NewPasswordController());

  final _formKey = GlobalKey<FormState>();

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
          'Create New Password',
          style: headdingThree,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(80),
              ),
              Image.asset(
                'assets/imgs/newpassword.png',
                height: 190,
                width: 290,
              ),
              SizedBox(
                height: getHeight(70),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create Your New Password",
                  style: headdingFour,
                ),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Obx(
                        () => CustomTextField(
                          suffixIcon: IconButton(
                            icon: _newPasswordController.isVisibility.value
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: raisinBlackColor,
                                    size: 15,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    size: 15,
                                    color: raisinBlackColor,
                                  ),
                            onPressed: () {
                              _newPasswordController.isVisibility.value =
                                  !_newPasswordController.isVisibility.value;
                            },
                          ),
                          obscureText:
                              _newPasswordController.isVisibility.value,
                          hintText: "New Password",
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 15,
                            color: raisinBlackColor,
                          ),
                          fillColor: AppColors.inputFillColor,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your new password";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: getHeight(24),
                      ),
                      Obx(
                        () => CustomTextField(
                          suffixIcon: IconButton(
                            icon: _newPasswordController.visibility.value
                                ? const Icon(
                                    Icons.visibility_off,
                                    size: 15,
                                    color: raisinBlackColor,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    size: 15,
                                    color: raisinBlackColor,
                                  ),
                            onPressed: () {
                              _newPasswordController.visibility.value =
                                  !_newPasswordController.visibility.value;
                            },
                          ),
                          obscureText: _newPasswordController.visibility.value,
                          filled: true,
                          hintText: "Confrim Password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your confrim password";
                            }
                            return null;
                          },
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 15,
                            color: raisinBlackColor,
                          ),
                          fillColor: AppColors.inputFillColor,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(26),
                      ),
                      Obx(
                        () => CheckboxListTile(
                          value: _newPasswordController.valueChack.value,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                                width: 2, color: AppColors.purpleColor),
                          ),
                          onChanged: (value) {
                            if (_newPasswordController.valueChack.value ==
                                false) {
                              _newPasswordController.valueChack.value = true;
                            } else {
                              _newPasswordController.valueChack.value = false;
                            }
                          },
                          title: const Text('Remember Me',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15)),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: AppColors.purpleColor,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.primaryWhiteColor,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
            color: AppColors.purpleColor,
            textColor: AppColors.primaryWhiteColor,
            buttonText: "Verify",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Get.defaultDialog(
                    title: "",
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/imgs/group_alart.png',
                            height: getHeight(252),
                            width: getHeight(252),
                          ),
                          SizedBox(
                            height: getHeight(30),
                          ),
                          const Text(
                            "Congratulation!",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: AppColors.purpleColor),
                          ),
                          SizedBox(
                            height: getHeight(16),
                          ),
                          const Text(
                            "Your account is ready to use",
                            style: TextStyle(
                                fontSize: 18, color: raisinBlackColor),
                          ),
                          SizedBox(
                            height: getHeight(30),
                          ),
                          CustomButton(
                              color: AppColors.purpleColor,
                              textColor: AppColors.primaryWhiteColor,
                              buttonText: "Go to HomePages",
                              onPressed: () {
                                Get.toNamed(mainNavbar);
                              })
                        ],
                      ),
                    ));
              }
            }),
      ),
    );
  }
}
