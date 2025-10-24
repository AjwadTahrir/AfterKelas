import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class scheduleAdded extends StatelessWidget {
  const scheduleAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[500],
        body: Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 225,horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time,
                  size: 200,
                ),
                Text('New schedule for your class has been set!',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize:25
                ),)
              ],
            ),
          ),
        ));
  }
}