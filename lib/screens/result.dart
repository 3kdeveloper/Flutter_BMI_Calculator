import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interprtation;

  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interprtation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              'Result Page',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              width: 1,
              height: 0.6,
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiResultTextStyle,
                  ),
                  Text(
                    interprtation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: BottomButton(
              buttonText: 'Re-Calculate',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
