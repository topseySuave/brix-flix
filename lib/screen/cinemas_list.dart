import 'package:brix_flix/widgets/cinema_card.dart';
import 'package:flutter/material.dart';

class CinemaList extends StatelessWidget {
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
                child: Text('Cinemas List',
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
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return CinemaCard();
              },
              itemCount: 5,
            ),
          ),
        ),

      ]
    );
  }
}
