import 'package:flutter/material.dart';

class pt2 extends StatelessWidget {
  const pt2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.orange.shade700,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("images/f1.jpg"),
            ),
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.orange.shade700,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/shrimp.jpg"),
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.orange.shade700,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("images/f2.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
