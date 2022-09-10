import 'package:yadfly/screens/mainnavbar/components/shorts/components/model/user.dart';

class Video {
  final String videoUrl;
  final User posteBy;
  final String subName;
  final String caption;
  final String audioName;
  final String like;
  final String comment;

  Video(this.videoUrl, this.posteBy, this.subName, this.caption, this.audioName,
      this.like, this.comment);
}
