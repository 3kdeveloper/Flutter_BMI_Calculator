import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInActiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);
const kSliderActiveColor = Color(0xFFFFFFFF);
const kSliderThumbColor = Color(0xFFEB1555);
const kSliderThumbOverlayColor = Color(0x30EB1555);
const kSliderInActiveColor = Color(0xFF808E98);
const kFloatingActionButtonColor = Color(0xFF4C4F5E);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF808E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w900,
);

final appBar = AppBar(
  title: Center(
    child: Text(
      'BMI CALCULATOR',
      textAlign: TextAlign.center,
    ),
  ),
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.w900,
);
const kTitleTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);
const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);
const kBmiResultTextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
