import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_social_media_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: raisinBlackColor)),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/imgs/appLogo.png",
                    height: getHeight(82),
                    width: getWidth(246),
                  ),
                  SizedBox(
                    height: getHeight(100),
                  ),
                  Text(
                    "Let’s you in",
                    style: headdingOne,
                  ),
                  SizedBox(
                    height: getHeight(40),
                  ),
                  CustomSocialMediaButton(
                      buttonText: "Continue with Facebook",
                      onPressed: () {
                        print("Facebook");
                      },
                      image: "assets/imgs/fb.png"),
                  SizedBox(
                    height: getHeight(16),
                  ),
                  CustomSocialMediaButton(
                      buttonText: "Continue with Google",
                      onPressed: () {
                        print("Google");
                      },
                      image: "assets/imgs/google.png"),
                  SizedBox(
                    height: getHeight(16),
                  ),
                  CustomSocialMediaButton(
                      buttonText: "Continue with Apple",
                      onPressed: () {
                        print("Apple");
                      },
                      image: "assets/imgs/apple.png"),
                  SizedBox(
                    height: getHeight(50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: getHeight(1),
                        width: MediaQuery.of(context).size.width / 3,
                        color: raisinBlackColor,
                      ),
                      SizedBox(
                        width: getWidth(2),
                      ),
                      Text("or"),
                      SizedBox(
                        width: getWidth(2),
                      ),
                      Container(
                        height: getHeight(1),
                        width: MediaQuery.of(context).size.width / 3,
                        color: raisinBlackColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: getHeight(50),
                  ),
                  CustomButton(
                      color: purpleColor,
                      textColor: primaryWhiteColor,
                      buttonText: "Sign in with password",
                      onPressed: () {}),
                  SizedBox(
                    height: getHeight(50),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(color: Color(0xFF9E9E9E))),
                      TextSpan(
                          text: "Sign up",
                          style: const TextStyle(color: purpleColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //print('Sign up');
                              Get.toNamed(signup);
                            })
                    ]),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
