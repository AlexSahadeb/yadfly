import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/accountsetup/selectedcategory/selected_category_controller.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class SelectedCategoryScreen extends StatelessWidget {
  SelectedCategoryScreen({Key? key}) : super(key: key);
  final categoryController = TextEditingController();
  SelectedCategoryController selectedCategoryController =
      Get.put(SelectedCategoryController());
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: Text(
              "Select Categories",
              style: headdingThree,
            ),
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: raisinBlackColor)),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getHeight(25),
                ),
                Text(
                  "What category of videos do you want to see ?",
                  style: headdingFour,
                ),
                SizedBox(
                  height: getHeight(15),
                ),
                CustomTextField(
                  controller: categoryController,
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  hintText: "Search",
                  fillColor: Colors.grey[200],
                  filled: true,
                  onChanged: (String? value) {
                    // selectedCategoryController.search = value.toString();
                    print(value);
                  },
                ),
                SizedBox(height: getHeight(20)),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 12.0,
                  children: List<Widget>.generate(
                    19,
                    (int index) {
                      return ChoiceChip(
                        label: Text(
                            selectedCategoryController.categoryList[index]),
                        selected:
                            selectedCategoryController.selectedValue.value ==
                                index,
                        onSelected: (bool selected) {
                          selectedCategoryController.selectedValue.value =
                              selected
                                  ? index
                                  : selectedCategoryController
                                      .selectedValue.value;
                        },
                      );
                    },
                  ).toList(),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: CustomButton(
              color: purpleColor,
              textColor: primaryWhiteColor,
              buttonText: "Continue",
              onPressed: () {
                Get.toNamed(mainNavbar);
              }),
        ),
      ),
    );
  }
}
