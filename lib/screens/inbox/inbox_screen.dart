import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/inbox/model/inbox_model.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

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
            "Inbox",
            style: headdingThree,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(inboxActivityScreen);
                },
                icon: SvgPicture.asset("assets/icons/add.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/callV.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/More_Circle_outline.svg")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                fillColor: Colors.grey[300],
                filled: true,
              ),
              SizedBox(
                height: getHeight(20),
              ),
              const Text(
                "Recently",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: raisinBlackColor),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Container(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: myInboxList.length,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(
                        left: 0,
                        right: 13,
                      ),
                      height: 67,
                      width: 67,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4, color: AppColors.brightLilacColor)),
                      child:
                          ClipOval(child: Image.asset(myInboxList[index].img)),
                    ),
                  )),
              SizedBox(
                height: getHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: headding6,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(requestMessage);
                    },
                    child: Text(
                      "Requests",
                      style: TextStyle(
                          fontSize: getFont(16),
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Expanded(
                  child: ListView.builder(
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
                            title: Text(
                              myInboxList[index].name,
                              style: headdingFive,
                            ),
                            subtitle: Text(myInboxList[index].messageType),
                            trailing: Text(myInboxList[index].time),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
