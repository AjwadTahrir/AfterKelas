import 'package:afterkelas/Pages/Student_page/Lecture_tutor_page.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesTutorTile extends StatelessWidget {
  final String imageAsset;
  final String subject;
  const NotesTutorTile({required this.imageAsset, required this.subject,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
        width: 320,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                    Image.asset(
                      imageAsset,
                      height: 80,
                    ),
                    Text(
                      subject,
                      style: TextStyle(fontSize: 20),
                    ),
                   
                  ]),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: 
                    (context)=>LectureTutorNote(subject: subject, imagePath: imageAsset)),
              );
                },
                child: Container(
                  height: 100,
                  width: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.brown[400],
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )),
              ),
                ],
              ),
            )
          ]))
    ]);
  }
}