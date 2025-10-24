import 'package:afterkelas/Comfirmation_page.dart/Canceled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelTutorPage extends StatelessWidget {
  const CancelTutorPage({super.key});

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
                    'Cancelling your class?',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Mind telling us why?',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize:20,
                    ),
                  ),
                   
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Your reason',
                    ),
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