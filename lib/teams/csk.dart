
import 'package:flutter/material.dart';

import '../variables.dart';

class CSK extends StatefulWidget {
  @override
  _CSKState createState() => _CSKState();
}

class _CSKState extends State<CSK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      body: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Background.PNG"),
                    fit: BoxFit.cover
                  ),
                ),
                padding: const EdgeInsets.all(20.7),
                alignment: Alignment.centerLeft,
              ),

              SizedBox(
                        height: 10,
                      ),

                      Container(
                        color: Colors.yellow[300],
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('SQUAD',style: mystyle(24,Colors.yellow[900]),),

                          SizedBox(
                            width: 130,
                          ),

                          FlatButton(
                            color: Colors.yellow[900],
                            onPressed: (){

                            }, 
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),child: Text('VIEW ALL',style: TextStyle(fontSize: 16 ,color: Colors.white),))
                            ),
                        ],)
                      ),

                      SizedBox(
                        height: 10,
                      ),


              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Colors.white,
                margin: EdgeInsets.only(left: 7,right: 7),
                child: Row(
                  children: [
                    Image(
                      width: 100,
                      height: 100,
                      image: AssetImage("assets/MS Dhoni.PNG"),
                    ),
                    Container(margin: EdgeInsets.only(left: 12), child: Text("MS Dhoni (C) (W)",style: mystyle(15,Colors.black),),),
                  ],
                ),
              ),

              Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Colors.white,
                margin: EdgeInsets.only(left: 7,right: 7),
                child: Row(
                  children: [
                    Image(
                      width: 100,
                      height: 100,
                      image: AssetImage("assets/Ambati Rayudu.PNG"),
                    ),
                    Container(margin: EdgeInsets.only(left: 12), child: Text("Ambati Rayudu",style: mystyle(15,Colors.black),),),
                  ],
                ),
              ),

              Divider(
                        height: 1,
                        color: Colors.grey[400],
                      ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Colors.white,
                margin: EdgeInsets.only(left: 7,right: 7),
                child: Row(
                  children: [
                    Image(
                      width: 100,
                      height: 100,
                      image: AssetImage("assets/Deepak Chahar.PNG"),
                    ),
                    Container(margin: EdgeInsets.only(left: 12), child: Text("Deepak Chahar",style: mystyle(15,Colors.black),),),
                  ],
                ),
              ),

                  SizedBox(
                        height: 20,
                      ),

                      Container(
                        color: Colors.yellow[300],
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('UPCOMING \nMATCHES',style: mystyle(24,Colors.yellow[900]),),

                          SizedBox(
                            width: 80,
                          ),

                          FlatButton(
                            color: Colors.yellow[900],
                            onPressed: (){

                            }, 
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),child: Text('VIEW ALL',style: TextStyle(fontSize: 16 ,color: Colors.white),))
                            ),
                        ],)
                      ),

                      SizedBox(
                        height: 10,
                      ),

                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 7,right: 7),
                      child: 
                          Image(
                            width: 100,
                            height: 100,
                            image: AssetImage("assets/nodata.jpeg"),
                          ),
                        
                      ),


                SizedBox(
                        height: 20,
                      ),

                      Container(
                        color: Colors.yellow[300],
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('RESULTS',style: mystyle(24,Colors.yellow[900]),),

                          SizedBox(
                            width: 110,
                          ),

                          FlatButton(
                            color: Colors.yellow[900],
                            onPressed: (){

                            }, 
                            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),child: Text('VIEW ALL',style: TextStyle(fontSize: 16 ,color: Colors.white),))
                            ),
                        ],)
                      ),

                      SizedBox(
                        height: 10,
                      ),

                  Container(
                        width: MediaQuery.of(context).size.width,
                        height: 210,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),),
                        child: Column(
                              children: [

                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        "'MEN'S",
                                        style: mystyle(16,Colors.white),
                                        ),
                                      color: Colors.orange[900],
                                      ),

                                    Container(padding: EdgeInsets.all(8),child: Text("Sunday, 01 November 2020",style: mystyle(16,Colors.orange[900]),)),
                                  ],
                                ),

                                Divider(
                                  height: 1,
                                  color: Colors.grey[400],
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image(
                                        width: 40,
                                        height: 40,
                                        image: AssetImage('assets/Chennai Super Kings.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("CHENNAI SUPER KINGS",style: mystyle(16,getteamcolor("CSK")),)),
                                    
                                  ],
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image(
                                        width: 40,
                                        height: 40,
                                        image: AssetImage('assets/Kings XI Punjab.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("KINGS XI PUNJAB",style: mystyle(16,getteamcolor("KXIP")),)),
                                  ],
                                ),

                                SizedBox(
                                  height: 13,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Match 53",style: mystyle(14,Colors.red),)),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Zayed Cricket Stadium",style: mystyle(12,Colors.grey[700]),)),
                                  ],
                                ),

                              
                                Divider(
                                  height: 16,
                                  color: Colors.grey[400],
                                ),

                                Container(child: Text("Chennai Super Kings won by 9 wickets",style: mystyle(13,Colors.black),)),

                              ],
                            )
                          
                          ),

                        SizedBox(
                        height: 10,
                      ),

                          Container(
                        width: MediaQuery.of(context).size.width,
                        height: 210,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),),
                        child: Column(
                              children: [

                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        "'MEN'S",
                                        style: mystyle(16,Colors.white),
                                        ),
                                      color: Colors.orange[900],
                                      ),

                                    Container(padding: EdgeInsets.all(8),child: Text("Thursday, 29 October 2020",style: mystyle(16,Colors.orange[900]),)),
                                  ],
                                ),

                                Divider(
                                  height: 1,
                                  color: Colors.grey[400],
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image(
                                        width: 40,
                                        height: 40,
                                        image: AssetImage('assets/Chennai Super Kings.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("CHENNAI SUPER KINGS",style: mystyle(16,getteamcolor("CSK")),)),
                                    
                                  ],
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image(
                                        width: 40,
                                        height: 40,
                                        image: AssetImage('assets/Kolkata Knight Riders.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("KOLKATA KNIGHT RIDERS",style: mystyle(16,getteamcolor("KKR")),)),
                                  ],
                                ),

                                SizedBox(
                                  height: 13,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Match 49",style: mystyle(14,Colors.red),)),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Dubai International Cricket Stadium",style: mystyle(12,Colors.grey[700]),)),
                                  ],
                                ),

                              
                                Divider(
                                  height: 16,
                                  color: Colors.grey[400],
                                ),

                                Container(child: Text("Chennai Super Kings won by 6 wickets",style: mystyle(13,Colors.black),)),

                              ],
                            )
                          
                          ),

                    SizedBox(
                        height: 10,
                      ),

            ],
          ),
        ),
      ),
    );
  }
}