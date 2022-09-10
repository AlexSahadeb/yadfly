import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/inbox/model/inbox_model.dart';
import 'package:yadfly/styles/app_styles.dart';

class RequestMessageScreen extends StatelessWidget {
  const RequestMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.primaryWhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        elevation: 0,
        title: Text(
          "Message Requests",
          style: headdingThree,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/More_Circle_outline.svg")),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: myInboxList.length,
          itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Get.toNamed(messagescreen);
                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    myInboxList[index].img,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      myInboxList[index].name,
                      style: headdingFive,
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.brightLilacColor),
                      child: Center(
                        child: Text(
                          myInboxList[index].messageCount.toString(),
                          style: const TextStyle(
                              fontSize: 15, color: AppColors.primaryWhiteColor),
                        ),
                      ),
                    )
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      myInboxList[index].messageType,
                    ),
                    Text(myInboxList[index].time)
                  ],
                ),
              )),
    ));
  }
}
