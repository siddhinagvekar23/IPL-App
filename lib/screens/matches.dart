import 'package:flutter/material.dart';
import '../variables.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

class MatchesPage extends StatefulWidget {
  @override
  _MatchesPageState createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  bool dataisthere = false;
  List iplmatches = [];
  List matchnumbers = [];
  List matchvenue = [];

  @override
  void initState(){
    super.initState();
    getupcomingmatches();
  }

  getupcomingmatches()async{
    String url = "https://www.iplt20.com/matches/schedule/men";
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final nameclass = document.getElementsByClassName('fixture__team-name');
    final matchnumberclass = document.getElementsByClassName('fixture__description');
    final venueclass = document.getElementsByClassName('fixture__info');
    for(var i=0; i<nameclass.length; i++){
      for(var j=0; j<nameclass.length; j=j+4){
        if(i == j){
          IplMatch iplMatch = IplMatch(nameclass[i].innerHtml, nameclass[i+1].innerHtml, nameclass[i+2].innerHtml, nameclass[i+3].innerHtml);
          iplmatches.add(iplMatch);
        }
      }
    }

    for(var i=0; i<matchnumberclass.length; i++){
      matchnumbers.add(matchnumberclass[i].innerHtml);
    }

    for(var i=0; i<venueclass.length; i++){
      if(venueclass[i].getElementsByTagName('span')[0].innerHtml != "Live"){
      matchvenue.add(venueclass[i].getElementsByTagName('span')[0].innerHtml.substring(49).trim());
      }else{
      matchvenue.add("Live Now");
      }
    }
    setState(() {
      dataisthere = true;
    });
  }

  getnextmatch()async{
    List infos=[];
    String url = "https://www.iplt20.com/matches/schedule/men";
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final nameclass = document.getElementsByClassName('fixture__team-name');
    final matchnumberclass = document.getElementsByClassName('fixture__description');
    final venueclass = document.getElementsByClassName('fixture__info');
    final dateclass = document.getElementsByClassName('match-list__date js-date');
    //print(venueclass[0].getElementsByTagName('span')[0].innerHtml.substring(49).trim());
    infos.add(nameclass[0].innerHtml);
    infos.add(nameclass[1].innerHtml);
    infos.add(nameclass[2].innerHtml);
    infos.add(nameclass[3].innerHtml);
    infos.add(matchnumberclass[0].innerHtml);
    infos.add(dateclass[0].innerHtml);
    if(venueclass[0].getElementsByTagName('span')[0].innerHtml != "Live"){
      infos.add(venueclass[0].getElementsByTagName('span')[0].innerHtml.substring(49).trim());
    }else{
      infos.add("Live Now");
    }
    return infos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      body: SafeArea(
              child: SingleChildScrollView(
          child: Stack(
             children: [

                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.only(top:200),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height /14,
                              ),
                            Text('IPL UPDATES',textAlign: TextAlign.center,style: mystyle(25,Colors.white),),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('UPCOMING FIXTURES',style: mystyle(18,Colors.white),),

                          SizedBox(
                            width: 40,
                          ),

                          FlatButton(
                            color: Colors.orange[900],
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
                        height: 180,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5),),
                        child: FutureBuilder(
                          future: getnextmatch(),
                          builder: (BuildContext context, snapshot){
                            if (!snapshot.hasData){
                              return Image.asset("assets/nodata.jpeg");
                            }
                            return Column(
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

                                    Container(padding: EdgeInsets.all(8),child: Text(snapshot.data[5].toString().toUpperCase(),style: mystyle(16,Colors.orange[900]),)),
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
                                      margin: EdgeInsets.only(left: 5),
                                      child: Image(
                                        width: 40,
                                        height: 40,
                                        image: AssetImage('assets/${snapshot.data[0]}.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 5),child: Text(snapshot.data[0].toString().toUpperCase(),style: mystyle(16,getteamcolor(snapshot.data[1])),)),
                                    
                                  ],
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Image(
                                        width: 40,
                                        height: 40,
                                        image: AssetImage('assets/${snapshot.data[2]}.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 5),child: Text(snapshot.data[2].toString().toUpperCase(),style: mystyle(16,getteamcolor(snapshot.data[3])),)),
                                  ],
                                ),

                                SizedBox(
                                  height: 13,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 10),child: Text(snapshot.data[4],style: mystyle(14,Colors.red),)),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text(snapshot.data[6],style: mystyle(12,Colors.grey[700]),)),
                                  ],
                                ),


                              ],
                            );
                          }
                          ),
                      ),

                      SizedBox(
                        height: 30,
                      ),













                      Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          Text('LATEST RESULTS',style: mystyle(18,Colors.white),),

                          SizedBox(
                            width: 80,
                          ),

                          FlatButton(
                            color: Colors.orange[900],
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

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("MUMBAI INDIANS",style: mystyle(16,getteamcolor("MI")),)),
                                    
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
                                        image: AssetImage('assets/Sunrisers Hyderabad.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("SUNRISERS HYDERABAD",style: mystyle(16,getteamcolor("SRH")),)),
                                    
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
                                        image: AssetImage('assets/Royal Challengers Bangalore.png'),
                                      ),
                                    ),

                                    Container(margin: EdgeInsets.only(left: 7),child: Text("ROYAL CHALLENGERS BANGALORE",style: mystyle(15,getteamcolor("RCB")),)),
                                  ],
                                ),

                                SizedBox(
                                  height: 13,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Eliminator",style: mystyle(14,Colors.red),)),

                                    Container(margin: EdgeInsets.only(left: 10),child: Text("Zayed Cricket Stadium",style: mystyle(12,Colors.grey[700]),)),
                                  ],
                                ),

                              
                                Divider(
                                  height: 16,
                                  color: Colors.grey[400],
                                ),

                                Container(child: Text("Sunrisers Hyderabad won by 6 wickets",style: mystyle(13,Colors.black),)),

                              ],
                            )
                          
                          ),

                      /*

                      dataisthere == false ? CircularProgressIndicator() : CarouselSlider.builder(itemCount: iplmatches.length, options: CarouselOptions(
                        viewportFraction: 0.8,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.easeIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),itemBuilder: (BuildContext context, int index){
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                                children: [

                                  SizedBox(
                                    height: 10,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image(
                                        width: 80,
                                        height: 80,
                                        image: AssetImage('assets/${iplmatches[index].firstteam}.png'),
                                      ),

                                      Text('VS',style: mystyle(20,Colors.black),),

                                      Image(
                                        width: 80,
                                        height: 80,
                                        image: AssetImage('assets/${iplmatches[index].secondteam}.png'),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 18,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text("${iplmatches[index].firstteam_sc}",style: mystyle(18,getteamcolor("${iplmatches[index].firstteam_sc}")),),

                                      Text("${iplmatches[index].secondteam_sc}",style: mystyle(18,getteamcolor("${iplmatches[index].secondteam_sc}")),),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 12,
                                  ),

                                  Center(child: Text(matchnumbers[index].toString(),style: mystyle(16,Colors.red),)),

                                  SizedBox(
                                    height: 4,
                                  ),

                                  Center(child: Text(matchvenue[index].toString(),style: mystyle(12,Colors.black),)),


                                ],
                              ),
                        );
                      },),*/


                      

                      SizedBox(
                        height: 10,
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