import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusableCard.dart';
import '../components/bottomButton.dart';
import '../components/counter.dart';
import '../components/genderCard.dart';

enum GenderType { NO_ONE, MALE, FEMALE }

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  GenderType selectedGender = GenderType.NO_ONE;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: accentColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      isSelected: selectedGender == GenderType.MALE,
                      childWidget: GenderCard(
                        title: "Homem",
                        icon: FontAwesomeIcons.mars,
                      ),
                      onClick: () {
                        setState(() {
                          selectedGender = GenderType.MALE;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      isSelected: selectedGender == GenderType.FEMALE,
                      childWidget: GenderCard(
                          title: "Mulher", icon: FontAwesomeIcons.venus),
                      onClick: () {
                        setState(() {
                          selectedGender = GenderType.FEMALE;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      isSelected: false,
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ALTURA",
                            style: kTitleStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(), style: kContentTextStyle),
                              Text("cm", style: kTitleStyle)
                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: gray,
                                overlayColor: Color(0x29EB1555),
                                thumbColor: accentColor,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0,
                                    disabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 30.0)),
                            child: Slider(
                              value: height.toDouble(),
                              min: 100,
                              max: 260,
                              onChanged: (e) {
                                setState(() {
                                  height = e.toInt();
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        isSelected: false,
                        childWidget: Counter(
                          label: "Peso",
                          value: weight,
                          onDecrement: () {
                            setState(() {
                              weight--;
                            });
                          },
                          onIncrement: () {
                            setState(() {
                              weight++;
                            });
                          },
                        )),
                  ),
                  Expanded(
                    child: ReusableCard(
                      isSelected: false,
                      childWidget: Counter(
                        label: "Idade",
                        value: age,
                        onDecrement: () {
                          setState(() {
                            age--;
                          });
                        },
                        onIncrement: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onPressed: () {

                Calculator calculator = Calculator(height, weight);

                Navigator.pushNamed(
                  context,
                  "/calculus",
                  arguments: calculator
                );
              },
              label: "Calcular",
            )
          ],
        ),
      ),
    );
  }
}
