import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(onbording);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Expanded(
            flex: 3,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/imgs/splashbgImg.png"))),
                child: Center(
                  child: Image.asset("assets/imgs/splashLogo.png"),
                ),
              ),
            )),
        const Expanded(
            flex: 1,
            child: Center(
              child: SpinKitCircle(
                color: AppColors.purpleColor,
                size: 60.0,
              ),
            ))
      ],
    )));
  }
}
