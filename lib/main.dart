import 'package:flutter/material.dart';
import 'package:ui_05_03/HomePage.dart';
void main()=> runApp(UI());
class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
