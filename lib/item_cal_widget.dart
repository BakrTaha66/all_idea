import 'package:all_idea/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemCalWidget extends StatelessWidget {
  String? value;
  Function()? onTap;

  ItemCalWidget({
    this.value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.indigo[800]!.withOpacity(0.2),
          width: 3,
        ),
      ),
      child: TextButton(
        onPressed: onTap != null
            ? onTap
            : () {
                Provider.of<CalProvider>(context, listen: false).detectVal(
                  int.parse(value ?? '0'),
                );
              },
        child: Text(
          value ?? '',
          style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 35,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
