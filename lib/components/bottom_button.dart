import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function onPress;

  BottomButton({
    @required this.buttonText,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        // margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
