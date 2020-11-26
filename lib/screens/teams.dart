import 'package:IPLApp/teams/csk.dart';
import 'package:IPLApp/teams/dc.dart';
import 'package:IPLApp/teams/kkr.dart';
import 'package:IPLApp/teams/kxip.dart';
import 'package:IPLApp/teams/mi.dart';
import 'package:IPLApp/teams/rcb.dart';
import 'package:IPLApp/teams/rr.dart';
import 'package:IPLApp/teams/srh.dart';
import 'package:IPLApp/variables.dart';
import 'package:flutter/material.dart';

class TeamsPage extends StatefulWidget {
  @override
  _TeamsPageState createState() => _TeamsPageState();
}

class _TeamsPageState extends State<TeamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/6,
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.centerLeft,
                child: Text("TEAMS",style: mystyle(28,Colors.white)),
              ),

              Container(
                color: Colors.grey[300],
                margin: EdgeInsets.fromLTRB(7, 7, 7, 0),
                child: Column(
                  children: [

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/CSK.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Chennai Super Kings",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CSK()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/DC.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Delhi Capitals",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DC()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/KXIP.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Kings XI Punjab",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KXIP()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/KKR.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Kolkata Knight Riders",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => KKR()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/MI.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Mumbai Indians",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MI()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/RR.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Rajasthan Royals",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RR()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/RCB.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Royal Challengers Banglore",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RCB()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),

                    InkWell(
                                          child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 7,right: 7),
                        child: Row(
                          children: [
                            Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/SRH.PNG"),
                            ),
                            Container(margin: EdgeInsets.only(left: 12), child: Text("Sunrisers Hyderabad",style: mystyle(15,Colors.black),),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SRH()));
                      },
                    ),

                    SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}