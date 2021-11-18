import 'package:flutter/material.dart';
import 'list.dart';

class ItemDetail extends StatefulWidget {
  final item itemm;
  const ItemDetail({Key? key, required this.itemm}) : super(key: key);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

// TODO: Add _itemmDetailState here

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
         backgroundColor: Colors.amber.shade300,
        title: Text(widget.itemm.label,style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
          child: Column(children: [

            SizedBox(
          height: 80,
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Image(image: AssetImage(widget.itemm.imageURL)),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          widget.itemm.label,
          style: const TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          widget.itemm.iteamdetail,
          style: const TextStyle(fontSize: 18),
        ),
      ])),
    );
  }
}
