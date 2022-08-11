import 'package:flutter/material.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: raisinBlackColor)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getHeight(83),
            ),
            Text(
              "Create your \nAccount",
              style: headdingOne,
            ),
            SizedBox(
              height: getHeight(67),
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      filled: true,
                      fillColor: inputFillColor,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter some text";
                        }
                      },
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
