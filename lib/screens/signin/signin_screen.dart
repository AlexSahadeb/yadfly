import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/signin/signin_controller.dart';
import 'package:yadfly/screens/signup/signup_controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_social_media_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  SigninController signinController = Get.put(SigninController());
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: raisinBlackColor)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(60),
              ),
              Text(
                "Login to your \nAccount",
                style: headdingOne,
              ),
              SizedBox(
                height: getHeight(50),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: "Email",
                        filled: true,
                        fillColor: inputFillColor,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your Email";
                          }
                        },
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Obx(
                        () => CustomTextField(
                          obscureText: signinController.offSecure.value,
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Password",
                          filled: true,
                          fillColor: inputFillColor,
                          suffixIcon: IconButton(
                            icon: Icon(
                              signinController.offSecure.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: purpleColor,
                            ),
                            onPressed: () {
                              signinController.offSecure.value =
                                  !signinController.offSecure.value;
                            },
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your Password";
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: getHeight(15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => const BorderSide(
                                    width: 2, color: purpleColor),
                              ),
                              activeColor: purpleColor,
                              focusColor: purpleColor,
                              value: signinController.check.value,
                              onChanged: (value) {
                                signinController.check.value =
                                    !signinController.check.value;
                              })),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                                color: raisinBlackColor,
                                fontSize: getFont(14),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getHeight(15),
                      ),
                      CustomButton(
                          color: brightLilacColor,
                          textColor: primaryWhiteColor,
                          buttonText: "Sign in",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          })
                    ],
                  )),
              SizedBox(
                height: getHeight(20),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(forgotscreen);
                  },
                  child: Text(
                    "Forgot the password?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: getFont(16),
                        color: purpleColor),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: getHeight(1),
                    width: MediaQuery.of(context).size.width / 4,
                    color: raisinBlackColor,
                  ),
                  SizedBox(
                    width: getWidth(2),
                  ),
                  const Text("or continue with"),
                  SizedBox(
                    width: getWidth(2),
                  ),
                  Container(
                    height: getHeight(1),
                    width: MediaQuery.of(context).size.width / 4,
                    color: raisinBlackColor,
                  )
                ],
              ),
              SizedBox(
                height: getHeight(25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialMediaButton(
                      onPressed: () {
                        print("facebook");
                      },
                      image: "assets/imgs/fb.png"),
                  SocialMediaButton(
                      onPressed: () {
                        print("Google");
                      },
                      image: "assets/imgs/google.png"),
                  SocialMediaButton(
                      onPressed: () {
                        print("Apple");
                      },
                      image: "assets/imgs/apple.png"),
                ],
              ),
              SizedBox(
                height: getHeight(40),
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(color: Color(0xFF9E9E9E))),
                    TextSpan(
                        text: "Sign up",
                        style: const TextStyle(
                            color: purpleColor, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(signup);
                          })
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
