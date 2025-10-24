import 'package:afterkelas/Components/NotesTutorTiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialsTutorPage extends StatelessWidget {
  const MaterialsTutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade700),
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Search',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit Your Subjects \nMaterials',
                style: GoogleFonts.dmSerifDisplay(fontSize: 30),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),

        Container(
          child: Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Column(
                              children: [
                                NotesTutorTile(
                                    imageAsset: 'lib/images/Physics.png',
                                    subject: 'Physics'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesTutorTile(
                                    imageAsset: 'lib/images/chemistry.png',
                                    subject: 'Chemistry'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesTutorTile(
                                    imageAsset: 'lib/images/programming.png',
                                    subject: 'Programming'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesTutorTile(
                                    imageAsset: 'lib/images/maths.png',
                                    subject: 'Maths'),

                                //Function
                              ],
                            ),
                          ],
                        ),
                    itemCount: 1)),
          ),
        ),
//ALL SUBJECTTTTTT
      
        
      ],
    );
  }
}