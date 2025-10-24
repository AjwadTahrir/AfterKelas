import 'package:afterkelas/Pages/Admin/main_page_admin.dart';
import 'package:afterkelas/Pages/Tutor/main_page_tutor.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:afterkelas/Pages/Student_page/main_page_student.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          Container(
            height: 550,
            child: Column(
              children: [
                SizedBox(height: 80),
                Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 40,
                ),
                SizedBox(height: 30),
                Text(
                  'Log in',
                  style: GoogleFonts.dmSerifDisplay(
                      color: Colors.black,
                      fontSize: 40),
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Username',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('Forgot Password?')]),
                )
              ],
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mainstudentpage(),
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
                            'Student',
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.white,
                              fontSize: 16,
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
                          builder: (context) => Maintutorpage(),
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
                            'Tutor',
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.white,
                              fontSize: 16,
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
                          builder: (context) => MainAdminpage(),
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
                            'Admin',
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            )
          ]),
        ])),
      ),
    );
  }
}
