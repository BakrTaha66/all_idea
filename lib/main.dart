import 'package:all_idea/cal_provider.dart';
import 'package:all_idea/calculator_screen.dart';
import 'package:all_idea/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalProvider(),
      child: MaterialApp(
        home: CalculatorScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
