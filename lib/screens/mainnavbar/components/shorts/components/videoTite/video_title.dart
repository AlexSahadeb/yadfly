import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:yadfly/constens/app_colors.dart';
import 'package:yadfly/screens/mainnavbar/components/shorts/components/video/video.dart';

class VideoTile extends StatefulWidget {
  const VideoTile({
    Key? key,
    required this.video,
  }) : super(key: key);
  final Video video;

  @override
  State<VideoTile> createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  late VideoPlayerController _videoController;
  late Future _initialVideoPlayer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoController =
        VideoPlayerController.asset("assets/videos/${widget.video.videoUrl}");
    _initialVideoPlayer = _videoController.initialize();
    _videoController.setLooping(true);
    _videoController.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: FutureBuilder(
          future: _initialVideoPlayer,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Stack(
                children: [
                  VideoPlayer(_videoController),
                  const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Icon(Icons.play_circle,
                          color: AppColors.primaryWhiteColor, size: 40))
                ],
              );
            } else {
              return Container(
                color: Colors.blue,
              );
            }
          }),
    );
  }
}
