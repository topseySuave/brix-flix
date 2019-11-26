import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:brix_flix/widgets/movie_cards.dart';
import 'package:brix_flix/models/category.dart';

class MainView extends StatelessWidget {

  // Widget categorySection(BuildContext context, Category categoryone) {
  //   return Column(
  //     children: <Widget>[
  //       Flexible(
  //       child: Row(
  //         children: <Widget>[
  //           Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
  //             child: Text(categoryone.name,
  //               textAlign: TextAlign.left,
  //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),

  //     Flexible(
  //       child: SizedBox(
  //         height: MediaQuery.of(context).size.height - 230.0,
  //         child: Swiper(
  //           containerHeight: 350,
  //           // containerWidth: MediaQuery.of(context).size.width,
  //           itemBuilder: (BuildContext context, int index){
  //             return MoviesCard(categoryone.movies[index]);
  //           },
  //           itemCount: categoryone.movies.length,

  //           autoplay: true,
  //           autoplayDelay: 5000,
  //           autoplayDisableOnInteraction: true,

  //           loop: false,
  //           viewportFraction: .87,
  //           scale: 0.8,
  //         ),
  //       ),
  //     ),
  //     ],
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    final categories = Category.fetchAll();
    final category = categories.first;

    // return Column(
    //   mainAxisSize: MainAxisSize.min,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: <Widget>[
    //     Flexible(
    //       child: SizedBox(
    //         height: MediaQuery.of(context).size.height,
    //         child: ListView.builder(
    //           itemBuilder: (BuildContext context, int index) {
    //             return categorySection(context, categories[index]);
    //           },
    //           itemCount: categories.length,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

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
              // containerWidth: MediaQuery.of(context).size.width,
              itemBuilder: (BuildContext context, int index){
               return MoviesCard(movie: category.movies[index]);
              },
              itemCount: category.movies.length,

              autoplay: true,
              autoplayDelay: 5000,
              autoplayDisableOnInteraction: true,

              loop: false,
              viewportFraction: .8,
              scale: 0.8,
            ),
          ),
        ),


        Flexible(child: Divider(indent: 20, endIndent: 20, thickness: 1.3)),


        // This should be from the list available sections
        // Flexible(
        //   child: Row(
        //     children: <Widget>[
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        //         child: Text('Coming soon',
        //           textAlign: TextAlign.left,
        //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),


        // Flexible(
        //   child: SizedBox(
        //     height: 350.0,
        //     child: Swiper(
        //       containerHeight: 350,
        //       itemBuilder: (BuildContext context,int index){
        //        return MoviesCard(movie: category.movies[index], isSmaller: true);
        //       },
        //       itemCount: category.movies.length,

        //       autoplay: true,
        //       autoplayDelay: 5000,
        //       autoplayDisableOnInteraction: true,

        //       loop: false,
        //       viewportFraction: .7,
        //       scale: 1,

        //     ),
        //   ),
        // ),




      ],
    );
  }
}
