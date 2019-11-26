import 'package:brix_flix/screen/movie_detail.dart';
import 'package:flutter/material.dart';

class MoviesCard extends StatelessWidget {
  final movie;
  final bool isSmaller;

  MoviesCard({@required this.movie, this.isSmaller: false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetail(movie))),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: "movie_card_${movie.id}",
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(movie.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 15.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    movie.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isSmaller ? 16 : 24),
                  ),
                  Text(movie.tags),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.01),
              blurRadius: 50.0,
              offset: Offset(0, 1)),
        ]),
      ),
    );
  }
}
