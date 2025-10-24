import 'package:afterkelas/Components/Schedule_admin.dart';
import 'package:afterkelas/Pages/Admin/View_attendance_admin_page.dart';
import 'package:afterkelas/Pages/Admin/view_report_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceAdminPage extends StatelessWidget {
  const AttendanceAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[300],
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ViewReportPage();
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
                                'View Attendance',
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
                                          builder: (context) => ViewAttendance()),
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
                                        Text('View'),
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
                              "View Schedule",
                              style:GoogleFonts.dmSerifDisplay(fontSize: 32),
                            )),
                      ],
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Divider(color: Colors.black,),
                    ),
                    SizedBox(height: 15,),
                    Column(
                      children: [
                        ScheduleAdminTile(
                          subject: 'Physics',
                          time: '8:00 am - 9:00 am',
                          tutor: 'Mr.Adib Fauzan',
                          medium: 'Lecture',
                        ),
                        ScheduleAdminTile(
                          subject: 'Maths',
                          time: '8:00 am - 9:00 am',
                          tutor: 'Mr.Aidil Hakim',
                          medium: 'Lecture',
                        ),
                        ScheduleAdminTile(
                          subject: 'Maths',
                          time: '10:00 am - 11:00 am',
                          tutor: 'Ms. Amira Maisarah',
                          medium: 'Tutorial',
                        ),
                        ScheduleAdminTile(
                          subject: 'Physics',
                          time: '12:00 am - 1:00 am',
                          tutor: 'Dr.Danial',
                          medium: 'Tutorial',
                        ),
                        ScheduleAdminTile(
                          subject: 'Programing',
                          time: '4:00 am - 5:00 am',
                          tutor: 'Mr.Adam',
                          medium: 'Lecture',
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}