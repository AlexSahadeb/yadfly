import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/newpassword/new_password.dart';
import 'package:yadfly/styles/app_styles.dart';
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
        title: Text(
          'Forgot Password',
          style: headdingThree,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: getHeight(250.5),
              ),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Code has been send to ", style: headdingFour),
                    TextSpan(
                      text: "+6282*****39",
                      style: headdingFour,
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: getHeight(60),
              ),
              Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 78,
                    width: 61,
                    child: TextField(
                      style: headdingThree,
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                  color: purpleColor, width: 2))),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78,
                    width: 61,
                    child: TextField(
                      style: headdingThree,
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                  color: purpleColor, width: 2))),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78,
                    width: 61,
                    child: TextField(
                      autocorrect: false,
                      style: headdingThree,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                  color: purpleColor, width: 2))),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78,
                    width: 61,
                    child: TextField(
                      autocorrect: false,
                      style: headdingThree,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                  color: purpleColor, width: 2))),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              )),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       width: 78,
              //       height: 61,
              //       decoration: BoxDecoration(
              //           color: Colors.grey,
              //           borderRadius: BorderRadius.circular(5),
              //           border: Border.all(color: purpleColor, width: 2)),
              //       child: Center(
              //           child: Text(
              //         "8",
              //         style: headdingThree,
              //       )),
              //     ),
              //     SizedBox(
              //       width: getWidth(16),
              //     ),
              //     Container(
              //       width: 78,
              //       height: 61,
              //       decoration: BoxDecoration(
              //           color: Colors.grey,
              //           borderRadius: BorderRadius.circular(5),
              //           border: Border.all(color: purpleColor, width: 2)),
              //       child: Center(
              //           child: Text(
              //         "5",
              //         style: headdingThree,
              //       )),
              //     ),
              //     SizedBox(
              //       width: getWidth(16),
              //     ),
              //     Container(
              //       width: 78,
              //       height: 61,
              //       decoration: BoxDecoration(
              //           color: Colors.grey,
              //           borderRadius: BorderRadius.circular(5),
              //           border: Border.all(color: purpleColor, width: 2)),
              //       child: Center(
              //           child: Text(
              //         "7",
              //         style: headdingThree,
              //       )),
              //     ),
              //     SizedBox(
              //       width: getWidth(16),
              //     ),
              //     Container(
              //       width: 78,
              //       height: 61,
              //       decoration: BoxDecoration(
              //           color: Colors.grey,
              //           borderRadius: BorderRadius.circular(5),
              //           border: Border.all(color: purpleColor, width: 2)),
              //       child: Center(
              //           child: Text(
              //         "9",
              //         style: headdingThree,
              //       )),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: getHeight(60),
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "Resend code in ", style: headdingFour),
                    const TextSpan(
                      text: "59 s",
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          color: purpleColor),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: getHeight(241),
              ),
              CustomButton(
                  color: purpleColor,
                  textColor: primaryWhiteColor,
                  buttonText: "Verify",
                  onPressed: () {
                    Get.toNamed(newpassword);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
