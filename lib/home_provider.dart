import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}
