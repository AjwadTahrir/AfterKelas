import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:afterkelas/Components/notes_tiles.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialsPage extends StatelessWidget {
  const MaterialsPage({Key? key});

  Widget _buildSubjectList(String title, List<Map<String, String>> subjects) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            title,
            style: GoogleFonts.dmSerifDisplay(fontSize: 30),
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: subjects.map((subject) {
              return Padding(
                padding: EdgeInsets.only(left: 15),
                child: NotesTile(
                  imageAsset: subject['imageAsset']!,
                  subject: subject['subject']!,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          _buildSubjectList("Your Subjects", [
            {'imageAsset': 'lib/images/Physics.png', 'subject': 'Physics'},
            {'imageAsset': 'lib/images/chemistry.png', 'subject': 'Chemistry'},
            {'imageAsset': 'lib/images/programming.png', 'subject': 'Programming'},
            {'imageAsset': 'lib/images/maths.png', 'subject': 'Maths'},
          ]),
          Divider(),
          _buildSubjectList("All Subjects", [
            {'imageAsset': 'lib/images/economy.png', 'subject': 'Economy'},
            {'imageAsset': 'lib/images/History.png', 'subject': 'History'},
            {'imageAsset': 'lib/images/programming.png', 'subject': 'Programming'},
            {'imageAsset': 'lib/images/biology.png', 'subject': 'Biology'},
            {'imageAsset': 'lib/images/Physics.png', 'subject': 'Physics'},
            {'imageAsset': 'lib/images/Geography.png', 'subject': 'Geography'},
            {'imageAsset': 'lib/images/chemistry.png', 'subject': 'Chemistry'},
            {'imageAsset': 'lib/images/maths.png', 'subject': 'Maths'},
          ]),
        ],
      ),
    );
  }
}
