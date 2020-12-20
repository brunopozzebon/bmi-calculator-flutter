import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {

  final String title;
  final IconData icon;

  GenderCard({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.title.toUpperCase(),
          style: kTitleStyle,
        )
      ],
    );
  }
}