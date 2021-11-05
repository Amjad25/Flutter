// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoes_app/conts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          leading: Image.asset('images/logo.png'),
          title: Text(
            "mobiSports",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded, color: Colors.black),
            ),
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Running',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontSize: 27.4,
                    ),
                  ),
                  
                   Text(
                    '15 Results',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.grey,
                      fontSize: 17.4,
                    ),
                  )
                ],
              ),
             SizedBox(
               height: 50,
             ),
              abc(),
            ],
          ),
        ),
      ),
    );
  }
}
