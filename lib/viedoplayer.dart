import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

import 'list.dart';

class vide extends StatefulWidget {
  vide({ super.key});

  @override
  _videState createState() => _videState();
}

class _videState extends State<vide> {
  late FlickManager flickManager;

  get currentindex => null;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
        ));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          FlickVideoPlayer(
              flickManager: flickManager
          ),

        ],
      ),
    ); 
  }
}