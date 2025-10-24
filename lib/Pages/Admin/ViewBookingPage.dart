import 'package:afterkelas/Comfirmation_page.dart/ApprovedPage.dart';
import 'package:afterkelas/Pages/Admin/Booking_tiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewBookingPage extends StatelessWidget {
  const ViewBookingPage({super.key});

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
      floatingActionButton: 
       FloatingActionButton.extended(
        backgroundColor: Colors.brown[100],
        label: Text('Approve all',
        style: GoogleFonts.dmSerifDisplay(
          color:Colors.black,
          fontSize:15
        ),),
       icon: Icon(Icons.check,
       color: Colors.black,),
        onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ApprovedPage(),
            ));
      }),
      body:
      SafeArea(
        child:ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Pending Bookings Requests",
              style: GoogleFonts.dmSerifDisplay(
                fontSize:30
              ),),
            ),
            SizedBox(height: 10,),

            BookingAdminTiles(subject: 'Physics & Chemistry', name: 'Harris Hakimi', price: '45'),
            BookingAdminTiles(subject: 'Maths', name: 'Aimi', price: '20'),
            BookingAdminTiles(subject: 'Economy', name: 'Haziq', price: '25'),
            BookingAdminTiles(subject: 'History & Chemistry', name: 'Zareef', price: '40'),
            BookingAdminTiles(subject: 'Physics & Programming', name: 'Ammar Zamani', price: '35'),
            

            
          ],
        ),
      )
    );
  }
}