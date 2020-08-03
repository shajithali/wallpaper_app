import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplash()async{
    var _dur=new Duration(seconds: 3);
    return new Timer(_dur, goToHome);
  }
  void goToHome() {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplash();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Genpy",
          style: GoogleFonts.righteous(textStyle: TextStyle(color: Color(0xfffc5c9c),fontSize: 24),letterSpacing:2,fontStyle: FontStyle.italic),


        ),
      ),
    );
  }
}
