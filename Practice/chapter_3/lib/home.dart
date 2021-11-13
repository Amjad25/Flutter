// ignore_for_file: prefer_const_constructors

import 'package:chapter_3/card1.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class home extends StatefulWidget {
  
  const home({Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
int _selectedIndex = 0;

// 8
static List<Widget> pages = <Widget>[
  const Card1(),
  
  // TODO: Replace with Card2
  Container(color: Colors.green),
  // TODO: Replace with Card3
  Container(color: Colors.blue)
];


// 9
void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
    
  }
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // body: pages[_selectedIndex],
      body: 
      pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // 10
currentIndex: _selectedIndex,
// 11
onTap: _onItemTapped,
        // 6,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
