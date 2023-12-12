import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  double get bmi {
    return _bmi;
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Bèo phì';
    } else if (_bmi > 18.5) {
      return 'Bình thường';
    } else {
      return 'Suy dinh dưỡng';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Bạn có cân nặng cơ thể cao hơn bình thường. Cố gắng tập thể dục nhiều hơn nhé.';
    } else if (_bmi >= 18.5) {
      return 'Bạn có cân nặng bình thường. Làm tốt lắm!';
    } else {
      return 'Bạn bị suy dinh dưỡng. Bạn hãy ăn nhiều hơn một chút.';
    }
  }
}
