
import 'package:amjad_app/about.dart';
import 'package:amjad_app/cart.dart';
import 'package:amjad_app/cartlist.dart';
import 'package:amjad_app/fav.dart';
import 'package:amjad_app/list.dart';
import 'package:amjad_app/login.dart';
import 'package:amjad_app/splash.dart';
import 'package:flutter/material.dart';
import 'listdetail.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

function1(){
  setState(() {
    
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.amber.shade300,
          title: Text("Home", style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(onPressed: () {
                Navigator.push(
              context, MaterialPageRoute(builder: (context) => favo()));


            }, icon: Icon(Icons.favorite,color: Colors.black,)),
            IconButton(
              
                onPressed: () {
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) => cart()));


                },
                icon: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.black,
                )),

                // Container(
                //   padding: EdgeInsets.fromLTRB(0, 6, 6, 29),
                //   child: CircleAvatar(
                //   radius: 10,
                //   backgroundColor: Colors.red.shade200,
                // )
                // ),
            // Stack(
            //   children: [
            //     Positioned(
                 
            //         child: CircleAvatar(
            //       radius: 10,
            //       backgroundColor: Colors.red.shade200,
            //     ))
            //   ],
            // )
          ],
        ),
        drawer: draw(context),
        body: SafeArea(
            child: ListView.builder(
                itemCount: item.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ItemDetail(itemm: item.samples[index]);
                      }));
                    },
                    child: buildItemsCard(item.samples[index], context),
                  );
                })));
  }
}

Widget draw(context) {
  return Drawer(
    child: Center(
      child: Column(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue.shade700,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade100,
                    backgroundImage: AssetImage('assets/person.png'),
                    radius: 25,
                    // backgroundImage: AssetImage("")
                  )),
              Text(" User Name : Amjad Ali \n Email : amjad@yahoo.com ",
                  style: TextStyle(color: Colors.black))
            ],
          )),
          Container(child: drawlist(context)),
        ],
      ),
    ),
  );
}

Widget drawlist(dynamic context) {
  return Column(
    children: [
      ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text("Your Cart", style: TextStyle(color: Colors.black)),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => cart()));
        },
      ),
      ListTile(
        leading: Icon(Icons.favorite_outline),
        title: Text("Favourite", style: TextStyle(color: Colors.black)),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => favo()));
        },
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text("About", style: TextStyle(color: Colors.black)),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => abt()));
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Logout", style: TextStyle(color: Colors.black)),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => splash()));
        },
      ),
    ],
  );
}

Widget buildItemsCard(item item, context) {

 
  Size size = MediaQuery.of(context).size;
  return Container(
    height: 315,
    child: Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3

      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(
                    Icons.favorite,
                  )),
              SizedBox(
                width: size.width * 0.66,
              ),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Center(child: Text(" 30% off")),
              )
            ],
          ),
          Container(
            height: 180,
            child: Image(image: AssetImage(item.imageURL)),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(item.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'platino',
              )),
          Container(
            padding: EdgeInsets.fromLTRB(300, 0, 1, 0),
            child: Text(" \$ ${item.price}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(300, 0, 1, 0),
            child:
                IconButton(onPressed: () {
                 
                  

                  // Citem(item.label, item.imageURL, item.price, item.iteamdetail);

                }, icon: Icon(Icons.shopping_cart)),
          ),
        ],
      ),
    ),
  );
}








Widget buildCartItems(item item, context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: 315,
    child: Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3

      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Colors.red;
                  },
                  icon: Icon(
                    Icons.favorite,
                  )),
              SizedBox(
                width: size.width * 0.66,
              ),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Center(child: Text(" 30% off")),
              )
            ],
          ),
          Container(
            height: 180,
            child: Image(image: AssetImage(item.imageURL)),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(item.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'platino',
              )),
          Container(
            padding: EdgeInsets.fromLTRB(300, 0, 1, 0),
            child: Text(" \$ ${item.price}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(300, 0, 1, 0),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ),
        ],
      ),
    ),
  );
}


