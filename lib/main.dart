import 'package:brix_flix/screen/cinemas_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:brix_flix/screen/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
    CinemaList(),
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
}
