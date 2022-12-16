import 'package:all_idea/item_cal_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cal_provider.dart';

class CalculatorScreen extends StatelessWidget {
  TextStyle textStyle = TextStyle(
    color: Colors.indigo[900],
    fontSize: 35,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.indigo[800],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ItemCalWidget(value: '1'),
                  ItemCalWidget(value: '2'),
                  ItemCalWidget(value: '3'),
                ],
              ),
              Row(
                children: [
                  ItemCalWidget(value: '4'),
                  ItemCalWidget(value: '5'),
                  ItemCalWidget(value: '6'),
                ],
              ),
              Row(
                children: [
                  ItemCalWidget(value: '7'),
                  ItemCalWidget(value: '8'),
                  ItemCalWidget(value: '9'),
                ],
              ),
              Row(
                children: [
                  ItemCalWidget(value: '*'),
                  ItemCalWidget(value: '0'),
                  ItemCalWidget(
                    value: '=',
                    onTap: () {
                      Provider.of<CalProvider>(context, listen: false).divide();
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Consumer<CalProvider>(
                  builder: (context, provider, child) {
                    return Text(
                      'Result: ${provider.result}',
                      style: textStyle,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
