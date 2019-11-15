import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:brix_flix/screen/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.brown,
    primaryColor: Colors.grey[50],
    primaryColorBrightness: Brightness.light,
    fontFamily: 'Montserrat',
  );

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    accentColor: Colors.black,
    brightness: Brightness.light,
    fontFamily: 'Montserrat',
    primaryTextTheme: TextTheme(
      title: TextStyle(
        color: Colors.black
      )
    )
  );
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brix Flix',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.black,
        brightness: Brightness.light,
        fontFamily: 'Montserrat',
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white
          )
        )
      ),
      home: MyHomePage(title: 'Brix Flix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    MainView(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.sort),
          tooltip: 'Open Menu',
          onPressed: () {
            print('open menu widget');
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search for a movie or cinema',
            onPressed: () {
              print('open search widget');
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            title: Text('Movies'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.personal_video),
            title: Text('Cinemas'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

//  Widget _buildCarousel(BuildContext context, int carouselIndex) {
//    return Column(
//      mainAxisSize: MainAxisSize.min,
//      children: <Widget>[
//        Text('Carousel $carouselIndex'),
//        SizedBox(
//          // you may want to use an aspect ratio here for tablet support
//          height: 450.0,
//          child: PageView.builder(
//            // store this controller in a State to save the carousel scroll position
//            controller: PageController(viewportFraction: 0.8),
//            itemBuilder: (BuildContext context, int itemIndex) {
//              return _buildCarouselItem(context, carouselIndex, itemIndex);
//            },
//          ),
//        )
//      ],
//    );
//  }
//
//  Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
//    return Padding(
//      padding: EdgeInsets.symmetric(horizontal: 4.0),
//      child: Container(
//        decoration: BoxDecoration(
//          color: Colors.black,
//          borderRadius: BorderRadius.all(Radius.circular(25.0)),
//        ),
//      ),
//    );
//  }

}
