import 'package:flutter/material.dart';
import 'package:food_screen1/home.dart';
import 'package:food_screen1/part2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        textTheme: Theme.of(context).textTheme.apply(bodyColor:Colors.deepOrangeAccent )
      ),
      home: hom(),
    );
  }
}
