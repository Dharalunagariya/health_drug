import 'dart:async';
import 'package:custom_linear_progress_indicator/custom_linear_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/st3.dart';

class St2Screen extends StatefulWidget {
  const St2Screen({super.key});

  @override
  State<St2Screen> createState() => _St2ScreenState();
}

class _St2ScreenState extends State<St2Screen> {
  double _progress = 0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (_progress < 1.0) {
        setState(() {
          _progress += 0.01;
        });
      } else {
        _timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return st3screen();
        }));
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/ST-2 (1).png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 87),
              child: CustomLinearProgressIndicator(
                maxValue: 1.0,
                value: _progress,
                minHeight: 9,
                animationDuration: 500,
                linearProgressBarBorderRadius: 150,
                backgroundColor: Color(0xff7E7F7F),
                progressAnimationCurve: Curves.easeInOut,
                colorLinearProgress: Color(0xffFFFFFF),
                onProgressChanged: (double value) {
                  print(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
