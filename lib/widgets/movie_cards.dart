import 'package:flutter/material.dart';

class MoviesCard extends StatelessWidget {
  final movie;
  MoviesCard(this.movie);

  @override
  Widget build (BuildContext context) {
    return InkWell(
      onTap: () => print('Tapped'),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        movie.imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(movie.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),
                  Text(movie.tags),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.01),
              blurRadius: 50.0,
              offset: Offset(0, 1)
            ),
          ]
        ),
      ),
    );
  }
}
