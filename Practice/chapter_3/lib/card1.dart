import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'main.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  static String category = "Editor\'s Choice";
  final String title = "The Art of Doug";

  final String description = "Learn to make the perfect bread.";
  final String chef = "Ray Wenderlich";

  @override
  Widget build(BuildContext context) {
    return Center(
      // Card1 Decorate Container
      child: Container(
        child: Stack(
          children: [
            Text(category, style: FooderlichTheme.darkTextTheme.headline5),
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline1,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
      right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
      right: 0,
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag1.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
