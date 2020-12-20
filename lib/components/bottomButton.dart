import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 60.0;

class BottomButton extends StatelessWidget {

  final String label;
  final Function onPressed;

  BottomButton({@required this.label, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: accentColor,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: bottomContainerHeight,
      child: FlatButton(
        child: Text(
          label,
          style: kLargeButtonTextStyle,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
