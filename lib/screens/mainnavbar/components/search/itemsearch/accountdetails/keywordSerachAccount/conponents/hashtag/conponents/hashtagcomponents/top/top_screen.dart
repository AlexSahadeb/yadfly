import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class TopScreen extends StatelessWidget {
  TopScreen({Key? key}) : super(key: key);

  TopController topController = Get.put(TopController());
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
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
                future: topController._initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: topController._controller.value.aspectRatio,
                      child: Stack(
                        children: [
                          VideoPlayer(
                            topController._controller,
                          ),
                          Positioned(
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {
                                        if (topController
                                            ._controller.value.isPlaying) {
                                          topController._controller.pause();
                                        } else {
                                          topController._controller.play();
                                        }
                                      },
                                      icon: Icon(
                                        topController
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
    );
  }
}

class TopController extends GetxController {
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
