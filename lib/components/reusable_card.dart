import 'dart:ui';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({
    @required this.width,
    @required this.height,
    @required this.color,
    this.cardChild,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          // color: Color(0xFF1D1E33),
          // color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(7.0),
        ),
        child: cardChild,
      ),
    );
  }
}
