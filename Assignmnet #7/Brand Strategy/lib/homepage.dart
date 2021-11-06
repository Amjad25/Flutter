import 'package:flutter/material.dart';
import 'package:screen2/constants.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Stack(
        children: [
          Positioned(
              child: Container(
            height: size.height * 0.65,
            decoration: BoxDecoration(color: kBackgroundColor),
          )),
          Positioned(
            top: size.height * 0.50,
            child: SafeArea(
                child: Container(
              height: size.height * 0.09,
            )),
          ),
          Positioned(
              left: size.width * 0.05,
              top: size.height * 0.04,
              child: Icon(
                Icons.arrow_back_ios,
                size: 40,
              )),
          Positioned(
              left: size.width * 0.75,
              top: size.height * 0.04,
              child: Icon(
                Icons.bookmark,
                size: 40,
              )),
          Positioned(
              left: size.width * 0.90,
              top: size.height * 0.04,
              child: Icon(
                Icons.more_vert_rounded,
                size: 40,
              )),
          Positioned(
            left: size.width * 0.25,
            right: size.width * 0.25,
            top: size.height * 0.10,
            bottom: size.height * 0.10,
            child: Image(image: AssetImage("images/book.png")),
          ),
          Positioned(
              left: size.width * 0.22,

              // right:  size.width*0.25,
              top: size.height * 0.51,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Brand Strategy",
                        style: bbold,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Dean Werner",
                        style: gtext,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      staricon,
                      staricon,
                      staricon,
                      staricon,
                      Hstaricon,
                      Text(
                        "  4.5",
                        style: brate,
                      ),
                      Text(
                        "/5.0",
                        style: grate,
                      )
                    ],
                  ),
                ],
              )),
         
        ],
      
    );
  }
}
