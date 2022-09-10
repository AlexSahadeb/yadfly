import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/constens/size_configs.dart';
import 'package:yadfly/routes/routes.dart';
import 'package:yadfly/screens/inbox/message/messagemodel/message_model.dart';
import 'package:yadfly/styles/app_styles.dart';
import 'package:yadfly/widgets/custom_text_field.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({
    Key? key,
  }) : super(key: key);
  final _messegeModel = MessageModel;
  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: raisinBlackColor),
        elevation: 0,
        title: Text(
          "Annette Black",
          style: headdingThree,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(audiocall);
              },
              icon: SvgPicture.asset("assets/icons/callA_outline.svg")),
          IconButton(
              onPressed: () {
                Get.toNamed(videocall);
              },
              icon: SvgPicture.asset("assets/icons/callV_outline.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/More_Circle_outline.svg")),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: demoChatMessage.length,
                  itemBuilder: (context, index) => Message(
                        message: demoChatMessage[index],
                      ))),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SafeArea(
                child: Row(
              children: [
                Expanded(
                    child: CustomTextField(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "Type message...",
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.photo_camera_outlined,
                      )),
                )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/imgs/send_button.png",
                      // width: 80,
                      height: 100,
                    ))
              ],
            )),
          )
        ],
      ),
    ));
  }
}

class Message extends StatelessWidget {
  const Message({Key? key, required this.message}) : super(key: key);
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: message.isSender
                    ? AppColors.brightLilacColor
                    : Colors.grey[200],
                borderRadius: message.isSender
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))
                    : const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              message.text.toString(),
              style: TextStyle(
                  color: message.isSender
                      ? AppColors.primaryWhiteColor
                      : AppColors.raisinBlackColor),
            )),
      ],
    );
  }
}
