import 'package:flutter/cupertino.dart';

class CalProvider extends ChangeNotifier {
  double result = 0;

  int a = 0;
  int b = 0;

  @override
  divide() {
    result = (a * b).toDouble();
    notifyListeners();
  }

  @override
  detectVal(int val) {
    if (a == 0) {
      a = val;
    } else {
      b = val;
    }
    notifyListeners();
  }

  @override
  removeVal() {
    a = 0;
    b = 0;
    notifyListeners();
  }
}
