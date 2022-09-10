import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/home_side_bar.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/makeData/make_data.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/video/video.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/videoTite/video_title.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/video_details.dart';

class ShortsScreen extends StatelessWidget {
  ShortsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Shorts",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.photo_camera_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: PageView.builder(
          onPageChanged: (int page) => {print("page change $page")},
          scrollDirection: Axis.vertical,
          itemCount: videos.length,
          itemBuilder: (context, index) => Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  VideoTile(
                    video: videos[index],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                            height: MediaQuery.of(context).size.width / 3,
                            child: VideoDetails(vid: videos[index])),
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.50,
                          child: HomeSideBar(
                            videoSide: videos[index],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
    );
  }
}
