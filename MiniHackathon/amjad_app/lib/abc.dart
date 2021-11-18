// import 'package:flutter/material.dart';
// import 'cartlist.dart';
// import 'home.dart';

// class abcd extends StatefulWidget {
// final Citem Cli;
//   const abcd({ Key? key ,required this.Cli}) : super(key: key);

//   @override
//   _abcdState createState() => _abcdState();
// }

// class _abcdState extends State<abcd> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber.shade300,
//         title: Text("MyCart",
//             style: TextStyle(
//               color: Colors.black,
//             )),
//         leading:  IconButton(
//             onPressed: () {

//  Navigator.push(
//               context, MaterialPageRoute(builder: (context) => home()));

//             },
//             icon: Icon(Icons.arrow_back, color: Colors.black),
//           ),

       
//       ),
//       body:
//       SafeArea(child:ListView.builder(
//         itemCount: 2,
//         itemBuilder: (BuildContext context ,index){

        
//         return buildCart(Cli,context);
//       }) )
//     );
//   }
// }


// Widget buildCart(Citem citem, context){
//   return  Container(
//     height: 315,
//     child: Card(
//       // 1
//       elevation: 2.0,
//       // 2
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       // 3

//       child: Column(
//         children: [
//           Row(
//             children: [
             
//               SizedBox(
//                 width: 90,
//               ),
//               Container(
//                 height: 30,
//                 width: 60,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.amber,
//                 ),
//                 child: Center(child: Text(" 30% off")),
//               )
//             ],
//           ),
//           Container(
//             height: 180,
//             child: Image(image: AssetImage(citem.cimageURL)),
//           ),
//           const SizedBox(
//             height: 4.0,
//           ),
//           Text(citem.clabel,
//               style: const TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: 'platino',
//               )),
//           Container(
//             padding: EdgeInsets.fromLTRB(300, 0, 1, 0),
//             child: Text(" \$ ${citem.cprice}"),
//           ),
//           Container(
//             padding: EdgeInsets.fromLTRB(300, 0, 1, 0),
//             child:
//                 IconButton(onPressed: () {

//                   Citem(citem.clabel, citem.cimageURL, citem.cprice, citem.citemdetail);
                  
//                 }, icon: Icon(Icons.shopping_cart)),
//           ),
//         ],
//       ),
//     ),
//   );
// }