import 'package:flutter/material.dart';

import 'home.dart';

class favo extends StatefulWidget {
  const favo({Key? key}) : super(key: key);

  @override
  _favoState createState() => _favoState();
}

class _favoState extends State<favo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.amber.shade300,
        title: Text("Favourite",
            style: TextStyle(
              color: Colors.black,
            )),

        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => home()));
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),

        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.shopping_cart_outlined, color: Colors.red),
        //   ),

        //   )
        // ]
      ),
      body: Center(
        child: Container(
          child: Text(
            "Nothing in your cart",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
