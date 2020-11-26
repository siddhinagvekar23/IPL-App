import 'package:flutter/material.dart';

import '../variables.dart';

class PointsTable extends StatefulWidget {
  @override
  _PointsTableState createState() => _PointsTableState();
}

class _PointsTableState extends State<PointsTable> {
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
                child: Text("POINTS TABLE",style: mystyle(28,Colors.white)),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(17, 17, 0, 0),
                color: Colors.grey[300],
                margin: EdgeInsets.fromLTRB(7, 7, 7, 7),
                child: Table(
                  
                  children: [
                   
                    TableRow(
                      children: [
                        Container(height: 50,child: Text("POS",style: mystyle(18,Colors.black)),),
                        Container(height: 50,child: Text("TEAM",style: mystyle(18,Colors.black)),),
                        Container(height: 50,child: Text("MAT",style: mystyle(18,Colors.black)),),
                        Container(height: 50,child: Text("NRR",style: mystyle(18,Colors.black)),),
                        Container(height: 50,child: Text("PTS",style: mystyle(18,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("Q",style: mystyle(17,Colors.green[700])),),
                        Container(height: 50,child: Text("MI",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("+1.107",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("18",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("Q",style: mystyle(17,Colors.green[700])),),
                        Container(height: 50,child: Text("DC",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("-0.109",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("16",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("Q",style: mystyle(17,Colors.green[700])),),
                        Container(height: 50,child: Text("SRH",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("+0.608",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("Q",style: mystyle(17,Colors.green[700])),),
                        Container(height: 50,child: Text("RCB",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("-0.172",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("5",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("KKR",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("-0.214",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("6",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("KXIP",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("-0.162",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("12",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("7",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("CSK",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("-0.455",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("12",style: mystyle(15,Colors.black)),),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("8",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("RR",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("14",style: mystyle(15,Colors.black)),),
                        Container(height: 50,child: Text("-0.569",style: mystyle(15,Colors.black)),),
                        Container(margin: EdgeInsets.only(left:8),height: 50,child: Text("12",style: mystyle(15,Colors.black)),),
                      ]
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),      
      
    );
  }
}