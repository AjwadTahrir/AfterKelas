import 'package:afterkelas/Components/notes_tiles_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialsAdminPage extends StatelessWidget {
  const MaterialsAdminPage({super.key});

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
        
//ALL SUBJECTTTTTT
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All Subjects',
                style: GoogleFonts.dmSerifDisplay(fontSize: 36),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Container(
          child: Expanded(
            child:  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                NotesAdminTile(
                                    imageAsset: 'lib/images/economy.png',
                                    subject: 'Economy'),
                                 SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/History.png',
                                    subject: 'History'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/programming.png',
                                    subject: 'Programming'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/biology.png',
                                    subject: 'Biology'),
                                 SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/Physics.png',
                                    subject: 'Physics'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/Geography.png',
                                    subject: 'Geography'),
                                 SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/chemistry.png',
                                    subject: 'Chemistry'),
                                SizedBox(
                                  height: 20,
                                ),
                                NotesAdminTile(
                                    imageAsset: 'lib/images/maths.png',
                                    subject: 'Maths'),

                                //Function
                              ],
                            ),
                          ],
                        ),
                    itemCount: 1)),
          ),
      ],
    );
  }
}