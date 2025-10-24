import 'package:afterkelas/Pages/Tutor/Cancel_tutor_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleTutorTile extends StatelessWidget {
  final String subject;
  final String time;
  final String description;
  final String medium;

  const ScheduleTutorTile(
      {required this.subject,
      required this.time,
      required this.description,
      required this.medium,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.brown[100], borderRadius: BorderRadius.circular(25)),
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        padding: EdgeInsets.all(20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subject,
              style: GoogleFonts.dmSerifDisplay(
                fontSize:20
              ),),
              Text(medium),
              Text(description),
              Row(
                children: [
                  Icon(Icons.access_time, size: 18,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(time),
                ],
              ),
            ],
          ),
          Container(
              height: 100,
              child: Row(children: [
                VerticalDivider(
                  color: Colors.black,
                ),
                IconButton(
                    icon: Icon(Icons.cancel,
                    size: 20,
                    color: Colors.black,),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CancelTutorPage()));
                    })
              ]))
        ]));
  }
}
