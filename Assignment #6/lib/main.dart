import 'package:flutter/material.dart';
import 'package:flutter_ass_6/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal[900], primaryColorLight: Colors.teal[700]),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
