import 'package:afterkelas/Comfirmation_page.dart/Canceled.dart';
import 'package:afterkelas/Comfirmation_page.dart/Rescheduled.dart';
import 'package:afterkelas/Components/Dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReschedulePage extends StatelessWidget {
  const ReschedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rescheduling your class?',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Choose your new date'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: DropdownMenu1(),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Rescheduled(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.brown)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Reschedule ',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.brown)),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.brown,
                            )
                          ]),
                    ),
                  ),
                )
              ]),
              Row(children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cancelled(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.brown)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cancel',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.brown)),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.brown,
                            )
                          ]),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
