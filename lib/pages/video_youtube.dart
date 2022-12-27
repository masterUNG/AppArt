// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:app_deaf/models/ContentModel.dart';
import 'package:app_deaf/utils/app_constant.dart';

class VideoYoutube extends StatefulWidget {
  const VideoYoutube({
    Key? key,
    required this.contentModel,
  }) : super(key: key);

  final ContentModel contentModel;

  @override
  State<VideoYoutube> createState() => _VideoYoutubeState();
}

class _VideoYoutubeState extends State<VideoYoutube> {
  // String testVideoYoutube = 'https://www.youtube.com/watch?v=xDOk0ELS2bc';
  String testVideoYoutube = 'httpswatch?v=xDOk0ELS2bc';

  String? initialVideoId;
  YoutubePlayerController? youtubePlayerController;
  bool haveError = false;

  @override
  void initState() {
    super.initState();
    setUpYoutube();
  }

  @override
  void dispose() {
    youtubePlayerController!.dispose();
    super.dispose();
  }

  void setUpYoutube() {
    try {
      initialVideoId = YoutubePlayer.convertUrlToId(widget.contentModel.video);
      print('initialVideoId --> $initialVideoId');

      youtubePlayerController = YoutubePlayerController(
          initialVideoId: initialVideoId!,
          flags: YoutubePlayerFlags(
            autoPlay: true,
          ));
    } catch (e) {
      //error
      setState(() {
        haveError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: haveError
          ? Center(child: Text('ไม่สามารถเปิด วีดีโอนี่ได้'))
          : YoutubePlayer(
              controller: youtubePlayerController!,
              showVideoProgressIndicator: true,
              progressColors: ProgressBarColors(
                  playedColor: AppConstant.bgColor,
                  handleColor: AppConstant.lightColor),
              onReady: () {
                youtubePlayerController!.addListener(() {});
              },
            ),
    );
  }
}
