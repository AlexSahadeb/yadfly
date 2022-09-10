import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/widgets/custom_main_button.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.brightLilacColor,
      appBar: AppBar(
        title: const Text(
          "QR Code",
          style: TextStyle(
              color: AppColors.primaryWhiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.primaryWhiteColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              "assets/icons/Send_outlined.svg",
              color: AppColors.primaryWhiteColor,
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/imgs/qrcode.png"),
              SizedBox(
                height: 10,
              ),
              Text(
                "@john_doe",
                style: TextStyle(
                    color: AppColors.primaryWhiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        height: 60,
        child: CustomButton(
            color: AppColors.primaryWhiteColor,
            textColor: AppColors.purpleColor,
            buttonText: "Scan QR Code",
            onPressed: () {}),
      ),
    );
  }
}
