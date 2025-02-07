import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/st4.dart';

class st3screen extends StatefulWidget {
  const st3screen({super.key});

  @override
  State<st3screen> createState() => _st3screenState();
}

class _st3screenState extends State<st3screen> {
  @override
  void initState() {
    super.initState();
    // Delay for a few seconds before navigating
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => st4screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/ST-3.png'), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 65,
            right: 65,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '“',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 96,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF),
                ),
              ),
              Text(
                'Medicine is a science of uncertainty and an art of probability.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Text(
                  '-FLORENCE NIGHTINGALE',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              SizedBox(
                height: 85,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
