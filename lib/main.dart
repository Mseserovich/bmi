import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.purpleAccent,
        accentColor: Colors.red,
        scaffoldBackgroundColor: Color(0xF151515),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          )
        )
      ),
      home: InputPage(),
      
    );
  }
}

