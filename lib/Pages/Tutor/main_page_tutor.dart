// ignore_for_file: prefer_const_constructors
import 'package:afterkelas/Pages/Tutor/Attendance_tutor_page.dart';
import 'package:afterkelas/Pages/Tutor/Booking_tutor_page.dart';
import 'package:afterkelas/Pages/Tutor/Materials_tutor_page.dart';
import 'package:afterkelas/Pages/Tutor/Tutor_profile.dart';
import 'package:afterkelas/Pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Maintutorpage extends StatefulWidget {
  @override
  _MaintutorpageState createState() => _MaintutorpageState();
}

class _MaintutorpageState extends State<Maintutorpage> {
  int index3 = 0;
  final screen = [AttendanceTutorPage(), MaterialsTutorPage(), BookingTutorPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            color: Colors.brown[100],
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff919f88)),
                  child: Center(
                    child: Text(
                      'AfterKelas',
                      style: GoogleFonts.dmSerifDisplay(fontSize: 36),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileTutorPage(),
                        ),
                      );
                    },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => loginpage(),
                        ),
                      );
                    },
                ),
                
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer())),
        centerTitle: true,
        title: Text(
          'AfterKelas',
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 35,
            color: Colors.grey.shade900,
          ),
        ),
      ),
      body: screen[index3],
      bottomNavigationBar: 
      ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(indicatorColor: Colors.brown[200]),
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            backgroundColor: Color(0xff919f88),
            onDestinationSelected: (index) => setState(() => this.index3 = index),
            selectedIndex: index3,
            height: 50,
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    size: 30,
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    size: 30,
                    Icons.book_outlined,
                    color: Colors.white,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    size: 30,
                    Icons.edit_outlined,
                    color: Colors.white,
                  ),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
