import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportSentPage extends StatelessWidget {
  const ReportSentPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 150, horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_outlined,
                size: 250,
                color: Color.fromARGB(255, 7, 107, 47),
              ),
              SizedBox(height: 20),
              Text(
                'Your Report has been sent!',
                style: GoogleFonts.dmSerifDisplay(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
