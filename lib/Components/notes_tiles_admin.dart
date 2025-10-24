import 'package:afterkelas/Pages/Student_page/Lecture_note_admin.dart';
import 'package:afterkelas/Pages/Student_page/Lecture_notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesAdminTile extends StatelessWidget {
  final String imageAsset;
  final String subject;

  const NotesAdminTile({required this.imageAsset, required this.subject, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        height: 225,
        width: 315,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: 
          Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Column(children: [
                  Image.asset(
                    imageAsset,
                    height: 80,
                  ),
                  Text(
                    subject,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: 
                        (context)=>LectureNote(subject: subject, imagePath: imageAsset)),
                  );
                    },
                    child: Container(
                      width: 180,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )),
                  ),
                  
                  SizedBox(
                    width: 20,
                  ),
                ])
              ]),
              SizedBox(
                    width: 20,
                  ),
             VerticalDivider(
                  color: Colors.black,
                ),
                IconButton(
                    icon: Icon(Icons.cancel,
                    size: 30,
                    color: Colors.black,),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LectureNoteAdmin(imagePath: imageAsset, subject: subject,)));
                    })
            ],
          ))
    ]);
  }
}
