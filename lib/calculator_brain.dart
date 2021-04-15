import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;
  CalculatorBrain({
    this.height,
    this.weight,
  });

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You Have Heigher than Noraml Weight. Try to Excercise More.';
    } else if (_bmi > 18.5) {
      return 'You Have a Normal Body Weight. Good Job!';
    } else {
      return 'You Have Lower than Noraml Body Weight. You can Eat a bit More.';
    }
  }
}
