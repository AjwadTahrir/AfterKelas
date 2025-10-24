import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApprovedPage extends StatelessWidget {
  const ApprovedPage({Key? key});

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
                size: MediaQuery.of(context).size.width * 0.5, // Adjust size dynamically
                color: Color.fromARGB(255, 7, 107, 47), // Consider using Colors.green
              ),
              SizedBox(height: 20),
              Text(
                'Booking has been approved!',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
