import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(onbording);
    });
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Expanded(
            flex: 3,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/imgs/splashbgImg.png"))),
                child: Center(
                  child: Image.asset("assets/imgs/splashLogo.png"),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Center(
              child: SpinKitCircle(
                color: purpleColor,
                size: 60.0,
              ),
            ))
      ],
    )));
  }
}
