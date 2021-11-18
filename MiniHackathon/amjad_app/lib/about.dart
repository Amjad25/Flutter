import 'package:amjad_app/home.dart';
import 'package:flutter/material.dart';

class abt extends StatefulWidget {
  const abt({Key? key}) : super(key: key);

  @override
  _abtState createState() => _abtState();
}

class _abtState extends State<abt> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: Text("About",
            style: TextStyle(
              color: Colors.black,
            )),
        actions: [
          
          SizedBox(
            width: 100,
          )
        ],
        leading: IconButton(
            onPressed: () {

 Navigator.push(
              context, MaterialPageRoute(builder: (context) => home()));

            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: size.width * 1,
              height: size.height * 0.35,
              color: Colors.blue.shade400,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CircleAvatar(
                    radius: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.shade200,
                      backgroundImage: AssetImage('assets/email.png'),
                      radius: 70,
                    ),
                  ),
                  Text(
                    'drop line about us',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.location_on,
              color: Colors.red,
              size: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Text("267 Julian Moterway, Lalukheat, Karachi."),
            SizedBox(
              height: 30,
            ),
            Text(
              "Open Map",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 60,
            ),
            Icon(
              Icons.mobile_screen_share_rounded,
              color: Colors.red,
              size: 30,
            ),
            Text("0900-78601"),
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.schedule,
              color: Colors.red,
              size: 30,
            ),
            Text("Monday-Friday"),
            Text("0900-78601"),
          ],
        ),
      ),
    );
  }
}
