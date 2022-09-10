import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/video/video.dart';

class VideoDetails extends StatelessWidget {
  VideoDetails({Key? key, required this.vid}) : super(key: key);
  final Video vid;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(vid.posteBy.profileImageUrl),
                ),
                title: Text(
                  "${vid.posteBy.userName}",
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryWhiteColor),
                ),
                subtitle: Text(
                  "${vid.subName}",
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryWhiteColor),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 75,
                    decoration: BoxDecoration(
                      color: AppColors.purpleColor,
                      borderRadius: BorderRadius.circular(30),
                      border:
                          Border.all(width: 2, color: AppColors.purpleColor),
                    ),
                    child: const Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(color: AppColors.primaryWhiteColor),
                      ),
                    ),
                  ),
                )),
            Row(
              children: [
                const CircleAvatar(
                  child: Center(
                    child: Icon(Icons.music_note),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width / 1.75,
                  child: Marquee(
                    text: vid.caption,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryWhiteColor),
                    scrollAxis: Axis.horizontal,
                    velocity: 10,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
