import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';
import '../components/bottomButton.dart';
import '../components/reusableCard.dart';

class CalculusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Calculator calculator = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Text(
                "Seus resultados",
                style: kCalculusTitleStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              isSelected: false,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calculator.getResult(),
                    style: kCalculusResultStyle,
                  ),
                  Text(
                    calculator.getBmi(),
                    style: kCalculusValueStyle,
                  ),
                  Text(
                    calculator.getDescription(),
                    style: kCalculusDescription,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            label: "Recalcular",
          )
        ],
      ),
    );
  }
}
