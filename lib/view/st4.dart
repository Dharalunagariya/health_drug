import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/st5.dart';

class St4Screen extends StatefulWidget {
  const St4Screen({super.key});

  @override
  State<St4Screen> createState() => _St4ScreenState();
}

class _St4ScreenState extends State<St4Screen> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => st5screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/ST-4.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: TweenAnimationBuilder<Duration>(
              duration: Duration(minutes: 3),
              tween: Tween(begin: Duration(minutes: 3), end: Duration.zero),
              onEnd: () {
                print('Timer ended');
              },
              builder: (BuildContext context, Duration value, Widget? child) {
                final minutes = value.inMinutes;
                final seconds = value.inSeconds % 60;
                final totalDuration = Duration(minutes: 3);
                final remainingDuration = totalDuration - value;

                // Calculate the percentage of the timer remaining
                double percentage = (remainingDuration.inMilliseconds /
                        totalDuration.inMilliseconds) *
                    100;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${percentage.toStringAsFixed(1)}%', // Display percentage with one decimal place
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 64),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
