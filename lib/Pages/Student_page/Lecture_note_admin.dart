import 'package:afterkelas/Components/leture_note_tile_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LectureNoteAdmin extends StatelessWidget {
  final String subject;
  final String imagePath;
  const LectureNoteAdmin({
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
               lecture_note_tile_admin(week: '25 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '24 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '23 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '22 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '21 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '20 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '19 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '18 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '17 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '16 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '15 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '14 ', subject: subject, imagePath: imagePath),
               lecture_note_tile_admin(week: '13 ', subject: subject, imagePath: imagePath),
                
              ],
            )));
  }
}
