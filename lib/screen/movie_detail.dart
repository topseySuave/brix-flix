import 'dart:math';
import 'package:brix_flix/models/movie.dart';
import 'package:brix_flix/screen/youtube_video_preview.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 

class GreyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    paint.color = Colors.grey.shade200;

    Offset center = Offset(width / 2, height / 1.5);
    double radius = min(width * 2, height / 2);
    canvas.drawCircle( center, radius, paint );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class MovieDetail extends StatelessWidget {
  final Movie movie;
  MovieDetail(this.movie);

  final double titlePadding = 16.0;

  Widget ratings(double rate) {
    return SmoothStarRating(
      allowHalfRating: true,
      starCount: 5,
      rating: rate,
      size: 25.0,
      color: Colors.yellow[700],
      borderColor: Colors.yellow[700],
      spacing:0.0
    );
  }

  Widget movieStats (String title, String stat) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('$title: '),
        title == 'Ratings' ?
          ratings(3) : Text('$stat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            tooltip: 'Save this movie',
            onPressed: () {
              print('Get notification for this movie');
            },
          ),
        ],
      ),

      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: CustomPaint(
            painter: GreyPainter(),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 220.0,
                    child: Container(
                      child: Hero(
                        tag: "movie_card_${movie.id}",
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Image.network(movie.imagePath),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              child: Text(movie.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
                            ),
                          ],
                        ),

                        Divider(
                          thickness: 1,
                          color: Colors.grey[300],
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: movieStats('Ratings', '')
                                  ),

                                  SizedBox(
                                    child: movieStats('Genre', 'Action, SCI-FI')
                                  ),
                                ],
                              ),

                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: movieStats('Duration', '02:33:12')
                                  ),

                                  SizedBox(
                                    child: movieStats('Review', '+40')
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Divider(
                          thickness: 1,
                          color: Colors.grey[300],
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Description', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  style: TextStyle( fontSize: 16 ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(fullscreenDialog: true, builder: (context) => VideoScreen(videoId: '', title: movie.title)));
                          },
                          color: Colors.yellow[700],
                          child: Text(
                            'Watch Trailer',
                            style: TextStyle(fontSize: 20)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ),
        ),
      )
    );
  }
}
