import 'package:IPLApp/screens/matches.dart';
import 'package:IPLApp/screens/pointstable.dart';
import 'package:IPLApp/screens/stats.dart';
import 'package:IPLApp/screens/teams.dart';
import 'package:flutter/material.dart';

class MainNavBar extends StatefulWidget {
  @override
  _MainNavBarState createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                    title: Text('',style: TextStyle(color: Colors.black),),
                    icon: IconButton(icon: Icon(Icons.home, color: Colors.black, size: 28,), onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MatchesPage()));
                     },),
                  ),

                  BottomNavigationBarItem(
                    title: Text('',style: TextStyle(color: Colors.black),),
                    icon: IconButton(icon: Icon(Icons.people, color: Colors.black, size: 28,), onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TeamsPage()));
                     },),
                  ),

                  BottomNavigationBarItem(
                    title: Text('',style: TextStyle(color: Colors.black),),
                    icon: IconButton(icon: Icon(Icons.format_list_numbered, color: Colors.black, size: 28,), onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PointsTable()));
                     },),
                  ),

                  BottomNavigationBarItem(
                    title: Text('',style: TextStyle(color: Colors.black),),
                    icon: IconButton(icon: Icon(Icons.trending_up, color: Colors.black, size: 28,), onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StatsPage()));
                     },),
                  ),
                ],
            ),
    );
  }
}