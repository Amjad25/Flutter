import 'dart:async';

import 'package:amjad_app/login.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => log())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 250,
        width: 250,
         child: SizedBox(
           
           child: Image.asset("assets/ecom.gif",
  height: 200.0,
  width: 200.0,),
         )
      // FlutterLogo(
      //   size: 180,
      // )),
    )));
  }
}
