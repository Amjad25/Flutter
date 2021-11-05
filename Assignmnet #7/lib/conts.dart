// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class abc extends StatelessWidget {
  abc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List shoeimages = [
      'images/pic1.jpg',
      'images/pic2.jpg',
      'images/pic4.jpg',
      'images/pic5.jpg',
    ];
    List snames = [
      "Rebel",
      " Echo ",
      " Blocks ",
      " jagguars ",
    ];
    List prices =[
      99.99 , 120.50 ,68.45 ,96.99
    ];

    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: shoeimages.length,
          itemBuilder: (BuildContext context, i) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // BoxDecoration(border: Border())
                // ,
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(shoeimages[i])),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.30,
                        
                        child: Column(
                          

                          children: [
                            Text(
                              "Men's FuelCell ",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,                                
                                color: Colors.black,
                                fontSize: 16.4,
                              ),
                            ),
                            Text(
                              "${snames[i]}",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 16.4,
                              ),
                            ),
                            SizedBox(height: 20,width: 100,),
                             Row(
                          children: [
                            
                            Icon(Icons.star_rounded, color: Colors.yellow, size: 17),
                           Icon(Icons.star_rounded, color: Colors.yellow, size: 17),
                           Icon(Icons.star_rounded, color: Colors.yellow, size: 17),
                           Icon(Icons.star_rounded, color: Colors.yellow, size: 17),
                           Icon(Icons.star_rounded, color: Colors.yellow, size: 17),

                          ],
                        ),
                         Text(
                          "\$${prices[i]}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.4
                          ),
                          
                        ),
                          ],
                        ))
                  ],
                ),

                // Container(
                //   padding: EdgeInsets.all(8.0),

                // ),
                SizedBox(
                  height: 50,
                )
              ],
            );
          }),
    );
  }
}
