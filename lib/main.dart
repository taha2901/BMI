import 'package:bmi/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalc());
}

class BmiCalc extends StatelessWidget {
  const BmiCalc({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
