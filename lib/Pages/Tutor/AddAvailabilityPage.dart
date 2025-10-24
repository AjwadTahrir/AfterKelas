import 'package:afterkelas/Comfirmation_page.dart/AddedNewSchedule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAvailabilityPage extends StatelessWidget {
  const AddAvailabilityPage({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Add New Scheduele',
                style: GoogleFonts.dmSerifDisplay(fontSize: 38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Time and Date',
                style: GoogleFonts.dmSerifDisplay(fontSize: 25),
              ),
            ),
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
                  hintText: 'Time e.g. 8.00 a.m - 9.00 a.m ',
                ),
              ),
            ),
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
                  hintText: 'Date e.g. 20/12/2024',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewScheduleAdded(),
                            ),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(13),
                                color: Colors.brown[300]),
                            padding: EdgeInsetsDirectional.all(15),
                            child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Add',style:TextStyle(
                                  color: Colors.white,
                                  fontSize:20
                                ),),

                                Icon(Icons.arrow_forward_ios,color: Colors.white,)
                              ],
                            )))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
