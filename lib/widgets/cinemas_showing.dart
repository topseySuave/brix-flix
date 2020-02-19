import 'package:brix_flix/screen/cinema_details.dart';
import 'package:flutter/material.dart';

class CinemasShowingMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Go out watch',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  'Cinemas showing right now',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 200.0,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.builder(
              padding: EdgeInsets.only(left: 20.0),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CinemaDetails()
                        ));
                      },
                      child: Card(
                        color: Colors.blueGrey,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Container(
                          height: 150.0,
                          width: 110.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://ericotrips.files.wordpress.com/2018/12/maryland-mall-genesis-deluxe-cinemas.jpg?w=700'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 110.0,
                      child: Text('Genesis'),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
