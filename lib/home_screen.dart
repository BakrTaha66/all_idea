import 'package:all_idea/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<HomeProvider>(
                builder: (context, provider, child) {
                  return Text(
                    'Count: ${provider.count}',
                    style: TextStyle(fontSize: 40),
                  );
                },
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 50),
                    primary: Colors.indigo,
                  ),
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .increment();
                  },
                  child: Text(
                    'add',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 50),
                    primary: Colors.indigo,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculatorScreen()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
