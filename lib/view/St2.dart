import 'package:flutter/material.dart';

class st2screen extends StatefulWidget {
  const st2screen({super.key});

  @override
  State<st2screen> createState() => _st2screenState();
}

class _st2screenState extends State<st2screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/ST-2 (1).png'), fit: BoxFit.fill)),
      ),
    );
  }
}
