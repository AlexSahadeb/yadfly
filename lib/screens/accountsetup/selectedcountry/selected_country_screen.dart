import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/accountsetup/selectedcountry/selected_country_controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class SelectedCountryScreen extends StatelessWidget {
  SelectedCountryScreen({
    Key? key,
  }) : super(key: key);
  final searchEditingController = TextEditingController();
  SelectedCountryController selectedCountryController =
      Get.put(SelectedCountryController());

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        title: Text(
          "Select Your Country",
          style: headdingThree,
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.primaryWhiteColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: CustomButton(
              color: AppColors.brightLilacColor,
              textColor: AppColors.primaryWhiteColor,
              buttonText: "Continue",
              onPressed: () {
                Get.toNamed(profilefrom);
              }),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              CustomTextField(
                controller: searchEditingController,
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                fillColor: Colors.grey[200],
                filled: true,
                onChanged: (String? value) {
                  selectedCountryController.search = value.toString();
                  print(value);
                },
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: selectedCountryController.countryName.length,
                      itemBuilder: (context, index) {
                        late String position = index.toString();
                        if (searchEditingController.text.isEmpty) {
                          return Obx(
                            () => Material(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  shape: RoundedRectangleBorder(
                                    // side: BorderSide(color: Colors.red, width: 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  onTap: () {
                                    selectedCountryController.check.value =
                                        !selectedCountryController.check.value;
                                  },
                                  leading: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.asset(selectedCountryController
                                        .countryFlag[index]
                                        .toString()),
                                  ),
                                  title: Row(
                                    children: [
                                      Text(
                                          selectedCountryController
                                              .countryCode[index]
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: getFont(14),
                                              color: const Color(0xFFBDBDBD),
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        width: getWidth(10),
                                      ),
                                      Text(
                                        selectedCountryController
                                            .countryName[index]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: getFont(16),
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon:
                                          selectedCountryController.check.value
                                              ? Icon(
                                                  Icons.circle_outlined,
                                                  color: AppColors.purpleColor,
                                                  size: getFont(20),
                                                )
                                              : Icon(
                                                  Icons.circle,
                                                  color: AppColors.purpleColor,
                                                  size: getFont(20),
                                                )),
                                ),
                              ),
                            ),
                          );
                        } else if (position.toLowerCase().contains(
                            searchEditingController.text.toLowerCase())) {
                          return Material(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(color: Colors.red, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onTap: () {},
                                leading: Container(
                                  height: getHeight(30),
                                  width: getWidth(30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(selectedCountryController
                                      .countryFlag[index]
                                      .toString()),
                                ),
                                title: Row(
                                  children: [
                                    Text(
                                        selectedCountryController
                                                .countryCode[index]
                                                .toString() +
                                            position,
                                        style: TextStyle(
                                            fontSize: getFont(14),
                                            color: const Color(0xFFBDBDBD),
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      width: getWidth(10),
                                    ),
                                    Text(
                                      selectedCountryController
                                          .countryName[index]
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: getFont(16),
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.circle_outlined,
                                      size: getFont(20),
                                    )),
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      }))
            ],
          ),
        ),
      ),
    ));
  }
}
