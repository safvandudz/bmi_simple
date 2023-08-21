import 'package:bmi2/Page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}


class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
