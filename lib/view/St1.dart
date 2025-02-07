import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/st2.dart';

class st1screen extends StatefulWidget {
  const st1screen({super.key});

  @override
  State<st1screen> createState() => _st1screenState();
}

class _st1screenState extends State<st1screen> {
  @override
  void initState() {
    super.initState();
    // Delay for a few seconds before navigating
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => St2Screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 392,
          left: 46,
          right: 46,
        ),
        child: Column(
          children: [
            Image.asset('image/health drug-01 2 (1).png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'AI Medical & E- Pharmacy Solutions For All.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xff525F71),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
