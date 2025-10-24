// ignore_for_file: prefer_const_constructors
import 'package:afterkelas/Pages/Admin/Attendance_admin_page.dart';
import 'package:afterkelas/Pages/Admin/BookingAdminPage.dart';
import 'package:afterkelas/Pages/Admin/Materials_admin_page.dart';
import 'package:afterkelas/Pages/Admin/ProfileAdminPage.dart';
import 'package:afterkelas/Pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAdminpage extends StatefulWidget {
  @override
  _MainAdminpageState createState() => _MainAdminpageState();
}

class _MainAdminpageState extends State<MainAdminpage> {
  int index4 = 0;
  final screen = [AttendanceAdminPage(), MaterialsAdminPage(), BookingAdminPage()];

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
                          builder: (context) => ProfileAdminPage(),
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
      body: screen[index4],
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
            onDestinationSelected: (index) => setState(() => this.index4 = index),
            selectedIndex: index4,
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
