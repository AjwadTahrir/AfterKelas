import 'package:afterkelas/Components/leture_note_tile%20.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LectureNote extends StatelessWidget {
  final String subject;
  final String imagePath;
  const LectureNote({
    required this.subject,
    required this.imagePath,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'AfterKelas',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 35,
              color: Colors.grey.shade900,
            ),
          ),
        ),
        body: Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    child: Text(subject,
                        style: GoogleFonts.dmSerifDisplay(fontSize: 36))),
               SizedBox(
                height: 20,
               ),
               lecture_note_tile(week: '25 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '24 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '23 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '22 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '21 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '20 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '19 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '18 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '17 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '16 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '15 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '14 ', subject: subject, imagePath: imagePath),
               lecture_note_tile(week: '13 ', subject: subject, imagePath: imagePath),
                
              ],
            )));
  }
}
