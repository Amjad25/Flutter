import 'package:flutter/material.dart';
import 'package:screen2/homepage.dart';
import 'package:screen2/lowerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Container(
        child: Column(children: [
          home(),low()
        ],),
      ),)

      
    );
  }
}

