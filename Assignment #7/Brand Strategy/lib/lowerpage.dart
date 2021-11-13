import 'package:flutter/material.dart';
import 'package:screen2/constants.dart';

class low extends StatefulWidget {
  const low({ Key? key }) : super(key: key);

  @override
  _lowState createState() => _lowState();
}

class _lowState extends State<low> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.35,
      padding: EdgeInsets.fromLTRB(70, 5, 5, 5),
      child:Container(
        child:Column(
            children :[ RichText(
            text: TextSpan(
              style: dbold,
              children: [
                
                const TextSpan(
                  text: 'Description',
                ),
                TextSpan(
                    text:
                        '\nDean on branding presents in a compact form the twenty essential principles of branding that will lead to the creation of strong bonds.....',
                    style: gtext),
                    
              ],
            ),
            
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: [
        SizedBox(height: size.height*0.15,),
        SizedBox(
          width: 160,
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {},
            icon: Icon(Icons.preview),
            label: Text(
              'Preview',
              style: gtext,
            ),
          ),
        ),
        
        SizedBox(
          width: 160,
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {
            },
            icon: Icon(Icons.messenger_outline),
            label: Text(
              'Review',
              style: gtext,
            ),
          ),
        ),
      ],
    )
      ]
          ),
        ),

    
         
        
      
    );
  }
}