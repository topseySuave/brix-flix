import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    void _onVideoLoaded () {
      setState(() {
        isLoading = false;
      });
    }

    Widget _player = YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.amber,
      progressColors: ProgressBarColors(
        playedColor: Colors.amber,
        handleColor: Colors.amberAccent,
      ),
      onReady: _onVideoLoaded,
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(title),
      ),

      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          child: isLoading == false ? Center(
            child: _player,
          ) : Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).primaryColor
              ),
            ),
          ),
        ),
      )
    );
  }
}
