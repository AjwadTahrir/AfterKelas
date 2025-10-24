import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lecture_note_tile extends StatelessWidget {
  final String subject;
  final String imagePath;
  final String week;
  const lecture_note_tile({
    required this.week,
    required this.subject,
    required this.imagePath,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(imagePath),
                      title: Text(subject),
                      subtitle: Text('lecture Week ' + week),
                      trailing: Icon(Icons.arrow_forward_ios),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
        ]),
    );
  }
}