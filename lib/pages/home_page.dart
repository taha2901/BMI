import 'package:bmi/colors/colors.dart';
import 'package:bmi/widget/gender.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Gender(
              gender: 'Male',
              color: kBlue,
              genderIcon: Icons.male,
              isMale: true,
            ),
            Gender(
              gender: 'Female',
              color: kRed,
              genderIcon: Icons.female,
              isMale: false,
            )
          ],
        ),
      ),
    );
  }
}

