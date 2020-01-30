import 'package:flutter/material.dart';

class CinemaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        print('cinema location')
      },
      child: Container(
        height: 230.0,
        margin: EdgeInsets.symmetric(vertical: 13.0),
        child: Hero(
          tag: "movie_card_13243421",
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/71nsvxFpSTL._SY606_.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.9),
                      ],
                      stops: [
                        0.0,
                        1.0
                      ]
                    )
                  ),
                ),

                Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Genesis Cinemas',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.5,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.grey, size: 16.0),
                          Text(
                            'The palms Lekki',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}