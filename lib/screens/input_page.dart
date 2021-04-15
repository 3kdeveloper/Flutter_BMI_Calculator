import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/round_icon_button.dart';
import '../components/bottom_button.dart';
import '../screens/result.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  width: 0.5,
                  height: 0.23,
                  color: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInActiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  width: 0.5,
                  height: 0.23,
                  color: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                ),
              ),
            ],
          ),
          Expanded(
            child: LayoutBuilder(builder: (context, constraints) {
              return ReusableCard(
                width: 1,
                height: 0.23,
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.15,
                      child: FittedBox(
                        child: Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                        ),
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * 0.2,
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 12.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 20.0,
                        ),
                        thumbColor: kSliderThumbColor,
                        activeTrackColor: kSliderActiveColor,
                        inactiveTrackColor: kSliderInActiveColor,
                        overlayColor: kSliderThumbOverlayColor,
                      ),
                      child: Container(
                        height: constraints.maxHeight * 0.2,
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                  width: 0.5,
                  height: 0.23,
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'kg',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ReusableCard(
                width: 0.5,
                height: 0.23,
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPress: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
          Expanded(
            flex: 0,
            child: BottomButton(
              buttonText: 'Calculate BMI',
              onPress: () {
                CalculatorBrain calculateBMI = CalculatorBrain(
                  height: height,
                  weight: weight,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResult: calculateBMI.calculateBmi(),
                      resultText: calculateBMI.getResult(),
                      interprtation: calculateBMI.getInterpretation(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// FloatingActionButton(
//                             backgroundColor: kFloatingActionButtonColor,
//                             child: Icon(
//                               FontAwesomeIcons.minus,
//                               color: kSliderActiveColor,
//                             ),
//                             onPressed: () {},
//                           ),
//                           SizedBox(
//                             width: 15.0,
//                           ),
//                           FloatingActionButton(
//                             backgroundColor: kFloatingActionButtonColor,
//                             child: Icon(
//                               FontAwesomeIcons.plus,
//                               color: kSliderActiveColor,
//                             ),
//                             onPressed: () {},
//                           ),
