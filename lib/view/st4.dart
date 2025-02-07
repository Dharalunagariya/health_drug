import 'package:flutter/material.dart';
import 'package:progress_bar_countdown/progress_bar_countdown.dart';

class st4screen extends StatefulWidget {
  const st4screen({super.key});

  @override
  State<st4screen> createState() => _st4screenState();
}

class _st4screenState extends State<st4screen> {
  ProgressBarCountdownController _controller = ProgressBarCountdownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 932,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/ST-4.png'), fit: BoxFit.fill),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProgressBarCountdown(
                  initialDuration: Duration(seconds: 60),
                  progressColor:
                      Colors.transparent, // Set transparent for progress color
                  progressBackgroundColor: Colors
                      .transparent, // Set transparent for background color
                  initialTextColor: Colors.black,
                  revealedTextColor: Colors.white,
                  height: 40,
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  countdownDirection: ProgressBarCountdownAlignment.left,
                  controller: _controller,
                  autoStart: true, // Timer will start automatically
                  onComplete: () {
                    print('Countdown Completed');
                  },
                  onStart: () {
                    print('Countdown Started');
                  },
                  onChange: (String timeStamp) {
                    print('Countdown Changed $timeStamp');
                  },
                  timeFormatter: (Duration remainingTime) {
                    final seconds = remainingTime.inSeconds
                        .remainder(60)
                        .toString()
                        .padLeft(2, '0');
                    final milliseconds =
                        (remainingTime.inMilliseconds % 1000 ~/ 10)
                            .toString()
                            .padLeft(2, '0');
                    return '$seconds:$milliseconds';
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
