import 'package:chapter_3/home.dart';
import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
//final theme = FooderlichTheme.light();

    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      // 4
      home:home(),
       
    );
  }
}