import 'package:flutter/material.dart';
import '../variables.dart';

class StatsPage extends StatefulWidget {
  @override
  _StatsPageState createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

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
                child: Text("STATISTICS",style: mystyle(28,Colors.white)),
              ),

              Column(
                children: [
                  Container(
                    color: Colors.grey[300],
                    margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.centerLeft,
                    child: Text("MOST RUNS",style: mystyle(24,Colors.indigo[800])),
                  ),

                    Divider(
                              height: 1,
                              color: Colors.grey[400],
                            ),

                  Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.fromLTRB(17, 12, 0, 0),
                  margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                  child: Table(
                    //border: TableBorder.all(),
                    columnWidths: {0: FractionColumnWidth(.2), 1: FractionColumnWidth(.45), 2: FractionColumnWidth(.4)},

                    children: [

                      TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("1",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("KL Rahul",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("670",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("2",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Shikhar Dhawan",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("618",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("3",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("David Warner",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("548",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("4",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Shreyas Iyer",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("519",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("5",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Ishan Kishan",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("516",style: mystyle(17,Colors.black)),)),
                      ]
                    ),
                    
                    ]
                  ),
                ),
              
              Container(
                    color: Colors.grey[300],
                    margin: EdgeInsets.fromLTRB(7, 10, 7, 0),
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.centerLeft,
                    child: Text("MOST WICKETS",style: mystyle(24,Colors.indigo[800])),
                  ),

              Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),

              Container(
                color: Colors.grey[300],
                margin: EdgeInsets.fromLTRB(7, 0, 7, 10),
                padding: EdgeInsets.fromLTRB(17, 12, 0, 0),
                child: Table(
                    columnWidths: {0: FractionColumnWidth(.18), 1: FractionColumnWidth(.48), 2: FractionColumnWidth(.4)},

                    children: [
                      
                      TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("1",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Kagiso Rabada",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("30",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("2",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Jasprit Bumrah",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("27",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("3",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Trent Boult",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("25",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("4",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Anrich Nortje",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("22",style: mystyle(17,Colors.black)),)),
                      ]
                    ),

                    TableRow(
                      children: [
                        Container(height: 50,width: 100,child: Text("5",style: mystyle(17,Colors.black)),),
                        Container(height: 50,child: Text("Yuzvendra Chahal",style: mystyle(17,Colors.black)),),
                        Center(child: Container(height: 50,child: Text("21",style: mystyle(17,Colors.black)),)),
                      ]
                    ),
                  ]
                ),
              )
                ],
              ),
            ],
          ),
        ),
      ),      
      
    );
  }
}