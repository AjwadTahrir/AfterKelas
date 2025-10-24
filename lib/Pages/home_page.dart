// ignore_for_file: prefer_const_constructors

import 'package:afterkelas/Pages/Sign_up.dart';
import 'package:afterkelas/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
          children: [
          Container(
            padding: EdgeInsetsDirectional.only(top: 125),
            child: Text(
              "Let's get started!",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 400,
            child: Image.asset('lib/images/Home.png', fit: BoxFit.cover),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.dmSerifDisplay(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        
          SizedBox(
            height: 10,
          ),
        
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginpage(),
                      ),
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: GoogleFonts.dmSerifDisplay(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
