
import 'package:flutter/material.dart';

import '../variables.dart';

class RR extends StatefulWidget {
  @override
  _RRState createState() => _RRState();
}

class _RRState extends State<RR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/RRbg.PNG"),
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
                        color: Colors.pink[600],
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('SQUAD',style: mystyle(24,Colors.white),),

                          SizedBox(
                            width: 130,
                          ),

                          FlatButton(
                            color: Colors.blue[900],
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
                      image: AssetImage("assets/Steve.PNG"),
                    ),
                    Container(margin: EdgeInsets.only(left: 12), child: Text("Steve Smith (C)",style: mystyle(15,Colors.black),),),
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
                      image: AssetImage("assets/Akash.PNG"),
                    ),
                    Container(margin: EdgeInsets.only(left: 12), child: Text("Akash Singh",style: mystyle(15,Colors.black),),),
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
                      image: AssetImage("assets/Tye.PNG"),
                    ),
                    Container(margin: EdgeInsets.only(left: 12), child: Text("Andrew Tye",style: mystyle(15,Colors.black),),),
                  ],
                ),
              ),

                  SizedBox(
                        height: 20,
                      ),

                      Container(
                        color: Colors.pink[600],
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('UPCOMING \nMATCHES',style: mystyle(24,Colors.white),),

                          SizedBox(
                            width: 80,
                          ),

                          FlatButton(
                            color: Colors.blue[900],
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
                        color: Colors.pink[600],
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('RESULTS',style: mystyle(24,Colors.white),),

                          SizedBox(
                            width: 110,
                          ),

                          FlatButton(
                            color: Colors.blue[900],
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

                                    Container(padding: EdgeInsets.all(8),child: Text("Tuesday, 10th November 2020",style: mystyle(16,Colors.orange[900]),)),
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
                                        image: AssetImage('assets/Mumbai Indians.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("MUMBAI INDIANS",style: mystyle(16,getteamcolor("RR")),)),
                                    
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
                                        image: AssetImage('assets/Delhi Capitals.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("DELHI CAPITALS",style: mystyle(16,getteamcolor("DC")),)),
                                  ],
                                ),

                                SizedBox(
                                  height: 13,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Final",style: mystyle(14,Colors.red),)),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Dubai International Cricket Stadium",style: mystyle(12,Colors.grey[700]),)),
                                  ],
                                ),

                              
                                Divider(
                                  height: 16,
                                  color: Colors.grey[400],
                                ),

                                Container(child: Text("Mumbai Indians won by 5 wickets",style: mystyle(13,Colors.black),)),

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

                                    Container(padding: EdgeInsets.all(8),child: Text("Tuesday, 10th November 2020",style: mystyle(16,Colors.orange[900]),)),
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
                                        image: AssetImage('assets/Mumbai Indians.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("MUMBAI INDIANS",style: mystyle(16,getteamcolor("RR")),)),
                                    
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
                                        image: AssetImage('assets/Delhi Capitals.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("DELHI CAPITALS",style: mystyle(16,getteamcolor("DC")),)),
                                  ],
                                ),

                                SizedBox(
                                  height: 13,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Final",style: mystyle(14,Colors.red),)),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Dubai International Cricket Stadium",style: mystyle(12,Colors.grey[700]),)),
                                  ],
                                ),

                              
                                Divider(
                                  height: 16,
                                  color: Colors.grey[400],
                                ),

                                Container(child: Text("Mumbai Indians won by 5 wickets",style: mystyle(13,Colors.black),)),

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