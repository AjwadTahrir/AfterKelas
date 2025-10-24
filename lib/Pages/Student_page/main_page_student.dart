// ignore_for_file: prefer_const_constructors
import 'package:afterkelas/Pages/Student_page/Attendance.dart';
import 'package:afterkelas/Pages/Student_page/Booking.dart';
import 'package:afterkelas/Pages/Student_page/Materials.dart';
import 'package:afterkelas/Pages/Student_page/Payment_History.dart';
import 'package:afterkelas/Pages/Student_page/Profile_page.dart';
import 'package:afterkelas/Pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainstudentpage extends StatefulWidget {
  @override
  _MainstudentpageState createState() => _MainstudentpageState();
}

class _MainstudentpageState extends State<Mainstudentpage> {
  int index2 = 0;
  final screen = [AttendancePage(), MaterialsPage(), BookingPage()];

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
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Payment History'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentHistoryPage(),
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
      body: screen[index2],
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
            onDestinationSelected: (index) => setState(() => this.index2 = index),
            selectedIndex: index2,
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
                    Icons.shopping_bag_outlined,
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
