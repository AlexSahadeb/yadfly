import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/screens/mainnavbar/components/profie/profileEdit/profile_edit_Controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class ProfileEditScreen extends StatelessWidget {
  ProfileEditScreen({Key? key}) : super(key: key);

  // XFile? _chooseImage;
  // chooseImageFromGallary() async {
  //   final ImagePicker picker = ImagePicker();
  //   _chooseImage = await picker.pickImage(source: ImageSource.gallery);
  //   _chooseImage = _chooseImage;
  // }

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

  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  TextEditingController dbController = TextEditingController();
  ProfileEditController profileEditController =
      Get.put(ProfileEditController());
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            "Edit Profile",
            style: headdingThree,
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: raisinBlackColor)),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Center(
              //   child: Stack(
              //     children: [
              //       Positioned(
              //           child: Material(
              //               child: GestureDetector(
              //                   onTap: () => chooseImageFromGallary(),
              //                   child: CircleAvatar(
              //                     backgroundColor: AppColors.primaryWhiteColor,
              //                     child: ClipOval(
              //                       child: SizedBox(
              //                           height: 180,
              //                           width: 180,
              //                           child: (_chooseImage == null)
              //                               ? Image.asset(
              //                                   "assets/imgs/profile1.png")
              //                               : Image.file(
              //                                   File(
              //                                     _chooseImage!.path,
              //                                   ),
              //                                   fit: BoxFit.cover,
              //                                 )),
              //                     ),
              //                     radius: 60,
              //                   )))),
              //       SizedBox(
              //         height: getHeight(20),
              //       ),
              //       Positioned(
              //           right: 5,
              //           bottom: 5,
              //           child: Container(
              //             height: 30,
              //             width: 30,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(5),
              //                 color: AppColors.purpleColor),
              //             child: const Center(
              //                 child: Icon(
              //               Icons.edit,
              //               size: 15,
              //               color: AppColors.primaryWhiteColor,
              //             )),
              //           ))
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: getHeight(20),
              // ),
              Form(
                  child: Column(
                children: [
                  CustomTextField(
                    hintText: "John_Doe",
                    fillColor: Colors.grey[200],
                    keyboardType: TextInputType.name,
                    filled: true,
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  CustomTextField(
                    hintText: "John_Deo",
                    keyboardType: TextInputType.name,
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  CustomTextField(
                    hintText: "UX/UI Designer",
                    fillColor: Colors.grey[200],
                    filled: true,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  CustomTextField(
                    hintText: "Date of birth",
                    fillColor: Colors.grey[200],
                    filled: true,
                    keyboardType: TextInputType.datetime,
                    readOnly: true,
                    controller: dbController,
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
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  CustomTextField(
                    fillColor: Colors.grey[200],
                    filled: true,
                    keyboardType: TextInputType.text,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: DropDown(
                        items: const ["Male", "Female", "Other"],
                        hint: const Text("Gander"),
                        icon: const Icon(Icons.arrow_drop_down),
                        onChanged: print,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  CustomTextField(
                    hintText: "Website",
                    fillColor: Colors.grey[200],
                    filled: true,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "Switch to Professional Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ))
                ],
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: CustomButton(
            color: AppColors.purpleColor,
            textColor: AppColors.primaryWhiteColor,
            buttonText: "Update",
            onPressed: () {
              // Get.toNamed();
            }),
      ),
    );
  }
}
