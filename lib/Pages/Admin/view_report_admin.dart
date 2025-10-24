import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewReportPage extends StatelessWidget {
  const ViewReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    child: Text('View Reports',
                        style: GoogleFonts.dmSerifDisplay(fontSize: 36))),
                SizedBox(
                  height: 20,
                ),
               ReportTile(name: "Deanie Muqri", date: '20/12/2023', report: '\nI have been having problems logging in. I have tried changing my password and it is still not working.'),
               ReportTile(name: "Adib Fauzan", date: '20/12/2023', report: '\nMy student cannot subscribe to my class.'),
              ],
            )));
  }
}


class ReportTile extends StatelessWidget {
  final String date;
  final String name;
  final String report;
  const ReportTile({
    required this.name,
    required this.date,
    required this.report,
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
                      isThreeLine: true,
                      tileColor: Colors.brown[100],
                      leading: Icon(Icons.report,size: 40,),
                      title: Text(name),
                      subtitle: Text(date+'\n'+report),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    ),
                  ),
        ]),
    );
  }
}

  
