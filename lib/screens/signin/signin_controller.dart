import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  var check = false.obs;
  var offSecure = true.obs;
  var valueChack = false.obs;

  var isActive = true.obs;
  var emailController;
  var passwordController;
  @override
  void initState() {
    this.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController.addListener(() {
      isActive = emailController.text.isNotEmpty.obs;

      isActive = isActive;
    });
    passwordController.addListener(() {
      isActive = passwordController.text.isNotEmpty.obs;

      isActive = isActive;
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
