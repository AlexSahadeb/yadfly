import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/mainnavbar/main_navbar_screen.dart';
import 'package:yadfly/screens/signin/signin_controller.dart';
import 'package:yadfly/screens/signup/signup_controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_social_media_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  SigninController signinController = Get.put(SigninController());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isActive = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController.addListener(() {
      isActive = emailController.text.isNotEmpty;
      setState(() {
        isActive = isActive;
      });
    });
    passwordController.addListener(() {
      isActive = passwordController.text.isNotEmpty;
      setState(() {
        isActive = isActive;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

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
                        controller: emailController,
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: "Email",
                        filled: true,
                        fillColor: AppColors.inputFillColor,
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
                          controller: passwordController,
                          obscureText: signinController.offSecure.value,
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Password",
                          filled: true,
                          fillColor: AppColors.inputFillColor,
                          suffixIcon: IconButton(
                            icon: Icon(
                              signinController.offSecure.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.purpleColor,
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
                      Obx(
                        () => CheckboxListTile(
                          value: signinController.valueChack.value,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                                width: 2, color: AppColors.purpleColor),
                          ),
                          onChanged: (value) {
                            if (signinController.valueChack.value == false) {
                              signinController.valueChack.value = true;
                            } else {
                              signinController.valueChack.value = false;
                            }
                          },
                          title: const Text(
                            'Remember Me',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: AppColors.purpleColor,
                        ),
                      ),

                      SizedBox(
                        height: getHeight(15),
                      ),
                      // ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //         onSurface: Colors.orange),
                      //     onPressed: isActive
                      //         ? () {
                      //             isActive = false;
                      //             emailController.clear();
                      //             passwordController.clear();
                      //           }
                      //         : null,
                      //     child: Text("data")),
                      CustomButton(
                          color: AppColors.brightLilacColor,
                          textColor: AppColors.primaryWhiteColor,
                          buttonText: "Sign in",
                          onPressed: () {
                            //  if (_formKey.currentState!.validate()) {}
                            Get.toNamed(mainNavbar);
                            // onPressed: isActive
                            //     ? () {
                            //         isActive = false;
                            //         emailController.clear();
                            //         passwordController.clear();
                            //       }
                            //     : () {
                            //         if (_formKey.currentState!.validate()) {
                            //           Get.defaultDialog();
                            //         }
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
                        color: AppColors.purpleColor),
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
                            color: AppColors.purpleColor,
                            fontWeight: FontWeight.bold),
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
