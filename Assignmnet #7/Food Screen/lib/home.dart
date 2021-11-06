import 'package:flutter/material.dart';
import 'package:food_screen1/part2.dart';

class hom extends StatelessWidget {
  const hom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            
            width: size.width * 1,
            child: Expanded(
              child: Row(
                
                children: [
                  
                  Icon(
                    Icons.arrow_back,
                    color: Colors.orange.shade700,
                    size: 35,
                  ),
                
                  Container(
                   width: size.width*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    
            
                     child: TextField(
                       
                       decoration: InputDecoration(
                         icon:Icon(Icons.search_rounded),
                         hintText: "Search Your Food",
                         enabledBorder: InputBorder.none,
                         focusedBorder:InputBorder.none
                       ),
            
                     )
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange.shade700,
                    child:CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/amj.jpg")
            
                    )
                  ),
            
                ],
              ),
            ),
          ),
          SizedBox(height: size.height*0.05,),
          //other screen halfes
                pt2(),
        ],
        
      ),
    );
  }
}
