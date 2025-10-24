import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Settings',
                style: GoogleFonts.dmSerifDisplay(fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Edit Pricing',
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
                  hintText: 'New Price',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: Colors.brown[100]),
                    padding: EdgeInsetsDirectional.all(15),
                    child: Text('Update',
                    style: TextStyle(
                      fontSize: 15
                    ),))
              ],
            ),
            SizedBox(height: 20,),
        
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(),
            ),
        
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Set Booking Limits',
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
                  hintText: 'Set Limits',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: Colors.brown[100]),
                    padding: EdgeInsetsDirectional.all(15),
                    child: Text('Update',
                    style: TextStyle(
                      fontSize: 15
                    ),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
