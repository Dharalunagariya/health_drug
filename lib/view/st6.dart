import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/st7.dart';

class signinscreen extends StatefulWidget {
  const signinscreen({super.key});

  @override
  State<signinscreen> createState() => _st6screenState();
}

class _st6screenState extends State<signinscreen> {
  bool currentvalue = true;

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
              Text(
                'Email Address',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff1E293A),
                ),
              ),
              SizedBox(
                height: 8,
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
              SizedBox(
                height: 22,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Color(0xff1E293A),
                ),
              ),
              SizedBox(
                height: 8,
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
              SizedBox(
                height: 19,
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Color(0xffD9D9D9),
                      value: currentvalue,
                      onChanged: (value) {
                        setState(() {
                          currentvalue = value!;
                        });
                      }),
                  Text(
                    'Remember for 30 days',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1E293A),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 47,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 58,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff09B7A6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In ',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xffFFFFFF),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 55,
                  left: 119,
                  right: 125,
                ),
                child: Container(
                  height: 51,
                  width: 186,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('image/Mask group (5).png'))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0xff1E293A),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print(Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return signupscreen();
                      })));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Color(0xff09B7A6),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff09B7A6),
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
