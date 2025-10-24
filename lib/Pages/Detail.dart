import 'package:afterkelas/Components/Dropdown4.dart';
import 'package:afterkelas/Pages/Student_page/main_page_student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child:Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 42,
                      ),
                    ),
                    
                    SizedBox(
                      height: 30),
                   TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade700),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'ID e.g. 000000-11-2222',
                        ),
                      ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Choose your syllabus'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: DropdownMenu4(),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black)),
                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mainstudentpage(),
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
                            Text('Next',
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
