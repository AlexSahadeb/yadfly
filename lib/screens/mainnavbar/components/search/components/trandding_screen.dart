import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:video_player/video_player.dart';

class TrandingScreen extends StatelessWidget {
  TrandingScreen({Key? key}) : super(key: key);
  TrandingController trandingController = Get.put(TrandingController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: const [
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(2, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
          ],
        ),
        childrenDelegate:
            SliverChildBuilderDelegate((context, index) => FutureBuilder(
                  future: trandingController._initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio:
                            trandingController._controller.value.aspectRatio,
                        child: Stack(
                          children: [
                            VideoPlayer(
                              trandingController._controller,
                            ),
                            Positioned(
                                child: Center(
                                    child: IconButton(
                                        onPressed: () {
                                          if (trandingController
                                              ._controller.value.isPlaying) {
                                            trandingController._controller
                                                .pause();
                                          } else {
                                            trandingController._controller
                                                .play();
                                          }
                                        },
                                        icon: Icon(
                                          trandingController
                                                  ._controller.value.isPlaying
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
    );
  }
}

class TrandingController extends GetxController {
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
