import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/styles/app_styles.dart';

class SavedScreen extends StatelessWidget {
  SavedScreen({Key? key}) : super(key: key);
  SavedController savedController = Get.put(SavedController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Saved",
          style: headdingThree,
        ),
        iconTheme: const IconThemeData(color: raisinBlackColor),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/add.svg",
                color: AppColors.raisinBlackColor,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shorts",
                  style: headdingFive,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.custom(
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: const [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate((context, index) =>
                    FutureBuilder(
                      future: savedController._initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio:
                                savedController._controller.value.aspectRatio,
                            child: Stack(
                              children: [
                                VideoPlayer(
                                  savedController._controller,
                                ),
                                Positioned(
                                    child: Center(
                                        child: IconButton(
                                            onPressed: () {
                                              if (savedController._controller
                                                  .value.isPlaying) {
                                                savedController._controller
                                                    .pause();
                                              } else {
                                                savedController._controller
                                                    .play();
                                              }
                                            },
                                            icon: Icon(
                                              savedController._controller.value
                                                      .isPlaying
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                            ))))
                              ],
                            ),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SavedController extends GetxController {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
