import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo/screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade100,
      appBar: AppBar(
        title: Text(
          "TODOS",
          style: TextStyle(fontSize: 35, fontStyle: FontStyle.italic),
        ),
        actions: [Icon(Icons.add, size: 45,),SizedBox( width: size.width * 0.05)],
        backgroundColor: Colors.deepOrange.shade600,
      ),


      body: scrn(),
    );
  }
}
