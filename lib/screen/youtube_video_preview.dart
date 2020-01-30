import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player/youtube_player.dart';

class VideoScreen extends StatefulWidget {
  final String videoId;
  final String title;

  VideoScreen({this.videoId, this.title: ''});

  @override
  _VideoScreenState createState() => _VideoScreenState(videoId: videoId, title: title);
}

class _VideoScreenState extends State<VideoScreen> {
  final String videoId;
  final String title;

  _VideoScreenState({this.videoId, this.title: ''});
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'iLnmTe5Q2Qw',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // brightness: Brightness.light,
        backgroundColor: Colors.black38,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(title),
      ),

      body: Container(
      // decoration: new BoxDecoration(color: Colors.black45),
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () => {
              print('video is ready')
              // _controller.addListener(listener);
            },
          ),
        ),
      )
    );
  }
}
