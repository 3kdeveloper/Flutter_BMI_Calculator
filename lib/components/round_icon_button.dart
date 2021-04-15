import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({
    @required this.icon,
    @required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kFloatingActionButtonColor,
      elevation: 10.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
        color: kSliderActiveColor,
      ),
      onPressed: onPress,
    );
  }
}
