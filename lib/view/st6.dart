import 'package:flutter/material.dart';

class st6screen extends StatefulWidget {
  const st6screen({super.key});

  @override
  State<st6screen> createState() => _st6screenState();
}

class _st6screenState extends State<st6screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/ST-6.png'), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 150,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let’s Sign In to \nhealthDrug.ai',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1E293A),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Color(0xffF1F5F9),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
