import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  bool isLoading = true;

  _VideoScreenState({this.videoId, this.title: ''});
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'ByARC5QrZV4',
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
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(title),
      ),

      body: Container(
        child: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () {
              print('video is ready');
            },
          ),
        ),
      )
    );
  }
}
