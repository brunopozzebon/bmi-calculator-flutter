import '../components/roundedIconButton.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Counter extends StatelessWidget {
  int value;
  Function onIncrement;
  Function onDecrement;
  String label;

  Counter(
      {@required this.value,
      @required this.onDecrement,
      @required this.onIncrement,
      this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (label != null)
          Text(
            label.toUpperCase(),
            style: kTitleStyle,
          ),
        Text(value.toString(), style: kContentTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: onDecrement,
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 20,
            ),
            RoundIconButton(
              onPressed: onIncrement,
              icon: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}

