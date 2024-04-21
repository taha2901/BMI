import 'package:bmi/pages/control.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gender extends StatelessWidget {
  String gender;
  Color color;
  IconData genderIcon;
  bool isMale;
  Gender({
    required this.gender,
    required this.color,
    required this.genderIcon,
    required this.isMale,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: color),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Control(isMale: isMale),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(genderIcon, size: 84, color: Colors.white),
              const SizedBox(
                height: 16,
              ),
              Text(
                gender,
                style: const TextStyle(color: Colors.white, fontSize: 48),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
