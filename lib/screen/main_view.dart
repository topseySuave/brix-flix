import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:brix_flix/widgets/movie_cards.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Flexible(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: Text('Now Playing',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 230.0,
            child: Swiper(
              containerHeight: 350,
              //                        containerWidth: MediaQuery.of(context).size.width,
              itemBuilder: (BuildContext context,int index){
                return MoviesCard();
              },
              itemCount: 5,

              autoplay: true,
              autoplayDelay: 5000,
              autoplayDisableOnInteraction: true,

              loop: false,
              viewportFraction: .87,
              scale: 0.8,
            ),
          ),
        ),
        Flexible(child: Divider(indent: 20, endIndent: 20, thickness: 1.3)),

        // This should be from the list available sections
        Flexible(
          child: SizedBox(
            height: 400.0,
            child: Swiper(
              containerHeight: 350,
              itemBuilder: (BuildContext context,int index){
                return MoviesCard();
              },
              itemCount: 5,

              autoplay: true,
              autoplayDelay: 5000,
              autoplayDisableOnInteraction: true,

              loop: false,
              viewportFraction: .5,
              scale: 0.1,

            ),
          ),
        ),
      ],
      // child: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
