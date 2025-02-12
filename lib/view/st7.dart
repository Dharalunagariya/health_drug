import 'package:flutter/material.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var isobscured;

  void initState() {
    isobscured = true;
  }

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
            top: 109,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up For Free,\nRight Now.',
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
                'Name',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1E293A),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: Namecontroller,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  fillColor: Color(0xffF1F5F9),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1E293A),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: passwordcontroller,
                obscureText: isobscured,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isobscured = !isobscured;
                        });
                      },
                      icon: isobscured
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  prefixIcon: Icon(Icons.lock_outline),
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
