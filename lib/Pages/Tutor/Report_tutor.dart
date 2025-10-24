import 'package:afterkelas/Comfirmation_page.dart/report_sent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportTutorPage extends StatelessWidget {
  const ReportTutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'AfterKelas',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 35,
              color: Colors.grey.shade900,
            ),
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          Container(
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Reports',
                        style: GoogleFonts.dmSerifDisplay(
                            color: Colors.black, fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 40,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                      hintText: 'Your name',
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: SizedBox(
                    height: 250,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      expands: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade700),
                          ),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Enter your report'),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportSentPage(),
                        ),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(25),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Send',
                            style: GoogleFonts.dmSerifDisplay(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            )
          ]),
        ])),
      ),
    );
  }
}
