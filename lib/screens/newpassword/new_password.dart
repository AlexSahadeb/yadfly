import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/widgets/custom_main_button.dart';
import 'package:yadfly/widgets/custom_text_field.dart';
import '../../constens/app_colors.dart';
import 'controller/new_password_controller.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);

  NewPasswordController _newPasswordController =
      Get.put(NewPasswordController());

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        title: const Text(
          'Forgot Password',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: raisinBlackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/imgs/newpassword.png',
                height: getHeight(396),
                width: getWidth(380),
              ),
              const Text(
                "Create Your New Password",
                style: TextStyle(fontSize: 16, color: raisinBlackColor),
              ),
              SizedBox(
                height: getHeight(24),
              ),
             Form(
               key: _formKey,
                 child: Column(
                   children: [
                     Obx(
                           () => CustomTextField(
                         suffixIcon: IconButton(
                           icon:_newPasswordController.isVisibility.value
                               ?const Icon(Icons.visibility_off,color: raisinBlackColor,):
                           const Icon(Icons.visibility,color: raisinBlackColor,),
                           onPressed: (){
                             _newPasswordController.isVisibility.value=!_newPasswordController.isVisibility.value;
                           },
                         ),
                         obscureText: _newPasswordController.isVisibility.value,
                         hintText: "Password",
                         filled: true,
                         prefixIcon: const Icon(
                           Icons.lock,
                           color: raisinBlackColor,
                         ),
                         fillColor: inputFillColor,
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return "Please enter your new password";
                           }
                           return null;
                         },
                       ),
                     ),
                     SizedBox(
                       height: getHeight(24),
                     ),
                     Obx(
                           () => CustomTextField(
                         suffixIcon: IconButton(
                           icon: _newPasswordController.visibility.value
                               ? const Icon(
                             Icons.visibility_off,
                             color: raisinBlackColor,
                           )
                               : const Icon(Icons.visibility,color: raisinBlackColor,),
                           onPressed: () {
                             _newPasswordController.visibility.value =
                             !_newPasswordController.visibility.value;
                           },
                         ),
                         obscureText: _newPasswordController.visibility.value,
                         filled: true,
                         hintText: "Password",
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return "Please enter your new password";
                           }
                           return null;
                         },
                         prefixIcon: const Icon(
                           Icons.lock,
                           color: raisinBlackColor,
                         ),
                         fillColor: inputFillColor,
                       ),
                     ),
                     SizedBox(
                       height: getHeight(26),
                     ),
                     Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Obx(() => Checkbox(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(4.0),
                               ),
                               side: MaterialStateBorderSide.resolveWith(
                                     (states) => BorderSide(width: 2, color: purpleColor),
                               ),
                               activeColor: purpleColor,
                               focusColor: purpleColor,
                               value: _newPasswordController.isCheck.value,
                               onChanged: (value) {
                                 _newPasswordController.isCheck.value =
                                 !_newPasswordController.isCheck.value;
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
                     ),
                     SizedBox(
                       height: getHeight(85),
                     ),
                     Center(
                       child: CustomButton(
                           color: purpleColor,
                           textColor: primaryWhiteColor,
                           buttonText: "Verify",
                           onPressed: () {
                             if(_formKey.currentState!.validate())
                             {
                               Get.defaultDialog(
                                   title: "",
                                   content: Column(
                                     children: [
                                       Image.asset(
                                         'assets/imgs/group_alart.png',
                                         height: getHeight(252),
                                         width: getHeight(252),
                                       ),
                                       SizedBox(
                                         height: getHeight(32),
                                       ),
                                       const Text(
                                         "Congratulation!",
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 24,
                                             color: purpleColor),
                                       ),
                                       SizedBox(
                                         height: getHeight(16),
                                       ),
                                       const Text(
                                         "Your account is ready to use",
                                         style: TextStyle(
                                             fontSize: 18, color: raisinBlackColor),
                                       ),
                                       SizedBox(
                                         height: getHeight(32),
                                       ),
                                       SizedBox(
                                         height: getHeight(58),
                                         width: getWidth(276),
                                         child: CustomButton(
                                             color: purpleColor,
                                             textColor: primaryWhiteColor,
                                             buttonText: "Go to HomePages",
                                             onPressed: () {
                                               print("Go to HomePage");
                                             }),
                                       ),
                                     ],
                                   ));
                             }
                             // Get.to(AlertDialogScreen());
                           }),
                     )

               ],
             ))
            ],
          ),
        ),
      ),
    );
  }
}
