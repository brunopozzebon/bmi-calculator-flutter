import 'file:///C:/Users/Bruno%20Pozzebon/bmi-calculator-flutter/lib/screens/calculusScreen.dart';
import 'package:flutter/material.dart';

import 'screens/inputScreen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=>InputScreen(),
        '/calculus': (context)=> CalculusScreen()
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      )
    );
  }
}

