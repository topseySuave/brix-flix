import 'dart:io';
import 'package:brix_flix/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
      color: Colors.red,
      borderColor: Colors.redAccent,
      spacing:0.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                brightness: Brightness.dark,
                iconTheme: IconThemeData(
                  color: Colors.white
                ),
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(movie.title),
                  background: Image.network(
                    movie.imagePath,
                    fit: BoxFit.contain,
                  )
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(titlePadding),
              child: Column(
                children: <Widget>[
                  Row(
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

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: titlePadding),
                              child: Text(
                                movie.title, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                              )
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: titlePadding, horizontal: titlePadding),
                              child: Text(movie.description)
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: titlePadding),
                    child: Row(
                      children: <Widget>[

                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(left: titlePadding - 6.0),
                            child: Row(
                              children: <Widget>[
                                Text('Ratings: '),
                                ratings(3),
                              ],
                            )
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: titlePadding - 6.0),
                          child: Row(
                            children: <Widget>[
                              Text('Genre: '),
                              Text('Action, SCI-FI'),
                            ],
                          )
                        ),
                        
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: titlePadding, bottom: titlePadding),
                    child: YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: 'E7fjjA06ETI',
                        flags: YoutubePlayerFlags(
                          autoPlay: true,
                          mute: true,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                    ),
                    // child: FluTube(
                    //   'https://www.youtube.com/watch?v=80pRyn7fZRk',
                    //   aspectRatio: 16 / 9,
                    //   autoPlay: true,
                    //   looping: true,
                    //   onVideoStart: () {},
                    //   onVideoEnd: () {},
                    // ),
                  ),

                  Divider(
                    thickness: 1.0,
                  )

                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
