import 'package:bmi/colors/colors.dart';
import 'package:bmi/pages/result_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Control extends StatefulWidget {
  bool isMale;
  Control({super.key, required this.isMale});

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  int weight = 25;
  int height = 120;
  @override
  Widget build(BuildContext context) {
    Color kMainColor = widget.isMale ? kBlue : kRed;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios,
                                    color: kMainColor, size: 26),
                              ),
                              Text(
                                'BMI',
                                style:
                                    TextStyle(color: kMainColor, fontSize: 26),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  widget.isMale ? "Male" : 'Female',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(widget.isMale ? Icons.male : Icons.female,
                                    color: kMainColor, size: 64),
                                const Text(
                                  'Weight(KG)',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                int i = (index + 5) * 5;
                                return Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        weight = i;
                                      });
                                      print(weight);
                                    },
                                    child: Center(
                                      child: Text(
                                        i.toString(),
                                        style: TextStyle(
                                            fontSize: weight == i ? 42 : 24,
                                            color: weight == i
                                                ? kMainColor
                                                : Colors.black),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: kMainColor),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          const Text(
                            "Height \n (CM)",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          Expanded(
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: 40,
                              itemBuilder: (context, index) {
                                int i = (index + 25) * 5;
                                return Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        height = i;
                                      });
                                      print(height);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                          color: height == i
                                              ? Colors.white
                                              : kMainColor,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Center(
                                        child: Text(
                                          i.toString(),
                                          style: const TextStyle(fontSize: 24),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              left: MediaQuery.sizeOf(context).width * 0.57,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kYellow,
                    padding: const EdgeInsets.all(24)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        height: height,
                        isMale: widget.isMale,
                        weight: weight,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Calc'.toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
