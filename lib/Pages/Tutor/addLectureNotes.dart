import 'package:afterkelas/Comfirmation_page.dart/uploaded.dart';
import 'package:afterkelas/Components/Dropdown2_tutor.dart';
import 'package:afterkelas/Components/Dropdown_tutor%20copy.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class addLectureNotesPage extends StatefulWidget {
  const addLectureNotesPage({super.key});

  @override
  State<addLectureNotesPage> createState() => _addLectureNotesPageState();
}

class _addLectureNotesPageState extends State<addLectureNotesPage> {

  void openFiles()async{
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null){
      // ignore: unused_local_variable
      PlatformFile file = resultFile.files.first;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adding new materials?',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Choose your subjects'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: DropdownMenu2(),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)),
                  ), 
                  SizedBox(height: 20,),

                  
                  Text('Notes or Tutorials?'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: DropdownMenu3(),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)),
                  ),
                   SizedBox(height: 20,),
                  
              
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      openFiles();
                    },
                    child: Container(
                       margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                          borderRadius: BorderRadius.circular(12),),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Choose File',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ]),
                    ),
                  ),
                )
              ]),
              Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadedPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.brown)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Upload',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.brown)),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.brown,
                            )
                          ]),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ],
      ),
    );
  }
}