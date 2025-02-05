import 'dart:math';

import 'package:custom_linear_progress_indicator/custom_linear_progress_indicator.dart';
import 'package:flutter/material.dart';

class st2screen extends StatefulWidget {
  const st2screen({super.key});

  @override
  State<st2screen> createState() => _st2screenState();
}

class _st2screenState extends State<st2screen> {
  get progressPercent => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/ST-2 (1).png'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLinearProgressIndicator(
              maxValue: 1, // new
              value: progressPercent,
              minHeight: 50,
              borderWidth: 4,
              borderColor: Colors.yellow.shade900,
              borderStyle: BorderStyle.solid,
              colorLinearProgress: Colors.yellow,
              animationDuration: 1000,
              borderRadius: 5,
              linearProgressBarBorderRadius: 10,
              backgroundColor: Colors.green.shade50,
              progressAnimationCurve: Curves.bounceInOut, // new
              alignment: Alignment.center, // new
              showPercent: true, // new
              percentTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              gradientColors: const [
                Colors.purple,
                Colors.blue,
                Colors.blueAccent
              ], // new
            ),
            Text(
              'Loading...',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
