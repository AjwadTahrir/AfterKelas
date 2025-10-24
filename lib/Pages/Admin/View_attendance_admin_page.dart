import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceTile extends StatelessWidget {
  final String date;
  final String name;
  final String role;
  const AttendanceTile({
    required this.name,
    required this.date,
    required this.role,
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
                    elevation: 5,
                    child: ListTile(
                      tileColor: Colors.brown[100],
                      leading: Image.asset('lib/images/Attendance.png',height: 70,),
                      title: Text(name),
                      subtitle: Text(role+'\n'+date),
                      trailing: Icon(Icons.check, color: Colors.green[700],),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    ),
                  ),
        ]),
    );
  }
}
class ViewAttendance extends StatelessWidget {
  const ViewAttendance({super.key});

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
          ),
        ),
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Attendances',
                        style: GoogleFonts.dmSerifDisplay(fontSize: 42))),
                SizedBox(
                  height: 20,
                ),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
               AttendanceTile(name: "Deanie Muqri", date: '20/12/2023', role: 'Tutor'),
              ],
            )));
  }
}