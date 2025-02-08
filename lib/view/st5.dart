import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/st6.dart';

class st5screen extends StatefulWidget {
  const st5screen({super.key});

  @override
  State<st5screen> createState() => _st5screenState();
}

class _st5screenState extends State<st5screen> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => st6screen()),
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
                image: AssetImage(
                    'image/feminine-futuristic-medical-cyborg-white-doctor-s-coat_219307-116-transformed 1.png'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
