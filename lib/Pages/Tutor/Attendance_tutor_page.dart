import 'package:afterkelas/Comfirmation_page.dart/Signed_in.dart';
import 'package:afterkelas/Components/Scheduletutorclass.dart';
import 'package:afterkelas/Pages/Tutor/Report_tutor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceTutorPage extends StatelessWidget {
  const AttendanceTutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[300],
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ReportTutorPage();
        })),
        child: Icon(Icons.report_outlined, color: Colors.white,),
      ),
    body:Expanded(
        child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.brown[300],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Attendance',
                                style: GoogleFonts.dmSerifDisplay(
                                    fontSize: 30, color: Colors.grey[300]),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignedIn()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Row(
                                      children: [
                                        Text('Sign'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.arrow_forward,
                                        color: Colors.brown[600],),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          Image.asset(
                            'lib/images/Attendance.png',
                            height: 95,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              "Upcoming Sessions,",
                              style:GoogleFonts.dmSerifDisplay(fontSize: 32),
                            )),
                      ],
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Divider(),
                    ),
                    SizedBox(height: 15,),
                    Column(
                      children: [
                        ScheduleTutorTile(
                          subject: 'Physics',
                          time: '8:00 am - 9:00 am',
                          description: 'RLC Circuit',
                          medium: 'Lecture',
                        ),
                        ScheduleTutorTile(
                          subject: 'Physics',
                          time: '9:00 am - 10:00 am',
                          description: 'Introduction to semi-conductor',
                          medium: 'Lecture',
                        ),
                        ScheduleTutorTile(
                          subject: 'Maths',
                          time: '10:00 am - 11:00 am',
                          description: 'Discuss tutorial 10',
                          medium: 'Tutorial',
                        ),
                        ScheduleTutorTile(
                          subject: 'Physics',
                          time: '12:00 am - 1:00 am',
                          description: 'Sub-Programme revision',
                          medium: 'Tutorial',
                        ),
                        ScheduleTutorTile(
                          subject: 'Programing',
                          time: '4:00 am - 5:00 am',
                          description: 'Introduction to Arrays',
                          medium: 'Lecture',
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}
