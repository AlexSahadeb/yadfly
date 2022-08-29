import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: primaryWhiteColor,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
            color: purpleColor,
            textColor: primaryWhiteColor,
            buttonText: "Verify",
            onPressed: () {
              Get.toNamed(newpassword);
            }),
      ),
    );
  }
}
