import 'package:afterkelas/Comfirmation_page.dart/Removed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lecture_note_tile_admin extends StatelessWidget {
  final String subject;
  final String imagePath;
  final String week;
  const lecture_note_tile_admin({
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
                      trailing: IconButton(onPressed:(){Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Removed(),
                        ));},  icon: Icon(Icons.cancel)),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
        ]),
    );
  }
}