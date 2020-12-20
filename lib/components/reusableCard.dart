import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final bool isSelected;
  final Widget childWidget;
  final Function onClick;

  ReusableCard({@required this.isSelected, this.childWidget, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onClick(),
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: isSelected ? activeColor: inactiveColor,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
