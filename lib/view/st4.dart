import 'package:flutter/material.dart';

class st4screen extends StatefulWidget {
  const st4screen({super.key});

  @override
  State<st4screen> createState() => _st4screenState();
}

class _st4screenState extends State<st4screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/ST-4.png'), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
