import 'package:IPLApp/screens/matches.dart';
import 'package:IPLApp/screens/pointstable.dart';
import 'package:IPLApp/screens/stats.dart';
import 'package:IPLApp/screens/teams.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      home: NavigationPage(),
    );
  }
}
      
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  List<Widget> pageoptions = [
    MatchesPage(),
    TeamsPage(),
    PointsTable(),
    StatsPage(),
  ];

  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageoptions[page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            page = index;
          });
        },
        backgroundColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                    title: Text('',style: TextStyle(color: Colors.black),),
                    icon: Icon(Icons.home, color: Colors.black, size: 28,),
                  ),

                  BottomNavigationBarItem(
                    title: Text('Teams',style: TextStyle(color: Colors.black),),
                    icon: Icon(Icons.people, color: Colors.black, size: 30,),
                  ),

                  BottomNavigationBarItem(
                    title: Text('Points Table',style: TextStyle(color: Colors.black),),
                    icon: Icon(Icons.format_list_numbered, color: Colors.black, size: 30,),
                  ),

                  BottomNavigationBarItem(
                    title: Text('Stats',style: TextStyle(color: Colors.black),),
                    icon: Icon(Icons.trending_up, color: Colors.black, size: 30,),
                  ),
                ],
            ),
    );
  }
}