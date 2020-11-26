import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mystyle(double size, [Color color, FontWeight fw = FontWeight.w700]){
  return GoogleFonts.montserrat(fontSize: size, color: color, fontWeight: fw);
}

class IplMatch {
  final String firstteam;
  final String firstteam_sc;
  final String secondteam;
  final String secondteam_sc;
  IplMatch(this.firstteam,this.firstteam_sc,this.secondteam,this.secondteam_sc);
}

getteamcolor(String team){
  if (team == "DC"){
    return Colors.lightBlue;
  } else if (team == "MI"){
    return Colors.indigo;
  } else if (team == "CSK"){
    return Colors.amber;
  } else if (team == "KXIP"){
    return Colors.redAccent;
  } else if (team == "RCB"){
    return Colors.red;
  } else if (team == "KKR"){
    return Colors.purple;
  } else if (team == "SRH"){
    return Colors.orange;
  } else if (team == "RR"){
    return Colors.pink;
  }
}