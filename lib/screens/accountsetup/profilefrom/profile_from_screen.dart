import 'dart:io';

import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class ProfileFromScreen extends StatelessWidget {
  ProfileFromScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  XFile? _chooseImage;
  chooseImageFromGallary() async {
    final ImagePicker _picker = ImagePicker();
    _chooseImage = await _picker.pickImage(source: ImageSource.gallery);
  }

  _selectedDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 50),
        lastDate: DateTime.now());

    if (picked != null) {
      dbController.text = "${picked.day}/${picked.month}/${picked.year}";
    } else {
      return null;
    }
  }

  TextEditingController dbController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            "Fill Your Profile",
            style: headdingThree,
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: raisinBlackColor)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: getHeight(25),
              ),
              Center(
                child: Stack(
                  children: [
                    Positioned(
                        child: _chooseImage == null
                            ? GestureDetector(
                                onTap: () => chooseImageFromGallary(),
                                child: CircleAvatar(
                                  backgroundColor: primaryWhiteColor,
                                  backgroundImage:
                                      AssetImage("assets/imgs/profile1.png"),
                                  radius: 60,
                                ))
                            : Image.file(
                                File(
                                  _chooseImage!.path,
                                ),
                                fit: BoxFit.cover,
                              )),
                    SizedBox(
                      height: getHeight(20),
                    ),
                    Positioned(
                        right: 5,
                        bottom: 5,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: purpleColor),
                          child: const Center(
                              child: Icon(
                            Icons.edit,
                            size: 15,
                            color: primaryWhiteColor,
                          )),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "Full Name",
                        fillColor: Colors.grey[200],
                        keyboardType: TextInputType.name,
                        filled: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your full name";
                          }
                        },
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      CustomTextField(
                        hintText: "Username",
                        keyboardType: TextInputType.name,
                        fillColor: Colors.grey[200],
                        filled: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your ussername";
                          }
                        },
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      CustomTextField(
                        hintText: "Date of birth",
                        fillColor: Colors.grey[200],
                        filled: true,
                        keyboardType: TextInputType.datetime,
                        controller: dbController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your birthday";
                          }
                        },
                        suffixIcon: IconButton(
                            onPressed: () => _selectedDateFromPicker(context),
                            icon: Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.grey[500],
                              size: 16,
                            )),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      CustomTextField(
                        hintText: "Email",
                        fillColor: Colors.grey[200],
                        keyboardType: TextInputType.emailAddress,
                        filled: true,
                        suffixIcon: Icon(
                          Icons.mail_outlined,
                          color: Colors.grey[500],
                          size: 16,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                        },
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      CustomTextField(
                        hintText: "Phone Number",
                        fillColor: Colors.grey[200],
                        filled: true,
                        keyboardType: TextInputType.number,
                        prefixIcon: CountryCodePicker(
                          initialSelection: "US",
                          showCountryOnly: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your phone number";
                          }
                        },
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      CustomTextField(
                        hintText: "Occupation",
                        fillColor: Colors.grey[200],
                        filled: true,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your occupation";
                          }
                        },
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: primaryWhiteColor,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        height: getHeight(60),
        child: CustomButton(
            color: purpleColor,
            textColor: primaryWhiteColor,
            buttonText: "Continue",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print("Next Page");
              }
            }),
      ),
    );
  }
}
