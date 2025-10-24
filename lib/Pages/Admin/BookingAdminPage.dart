import 'package:afterkelas/Pages/Admin/Payment_History_admin.dart';
import 'package:afterkelas/Pages/Admin/Setting.dart';
import 'package:afterkelas/Pages/Admin/ViewBookingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingAdminPage extends StatelessWidget {
  const BookingAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown[100]),
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 60,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewBookingPage()),
                        );
                      },
                      child: Container(
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown[100]),
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      size: 60,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SettingPage()),
                        );
                      },
                      child: Container(
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.brown[100]),
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'View Payment \nHistory',
                      style: GoogleFonts.dmSerifDisplay(fontSize: 34),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentHistoryAdminPage()),
                    );
                  },
                  child: Container(
                      width: 275,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
