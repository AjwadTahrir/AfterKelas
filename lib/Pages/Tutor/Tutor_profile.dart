import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTutorPage extends StatelessWidget {
  const ProfileTutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
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
      body: Column(
        children: [
          SizedBox(height:40),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              padding: EdgeInsets.all(20),
              child: 
              Row(
                children: [
                 Icon(Icons.person,size: 110,),
                 SizedBox(width: 5,),
                 Container(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mr.Adib Fauzan',
                      style: GoogleFonts.dmSerifDisplay(fontSize:26),),
                      SizedBox(height: 5,),
                      Text('Tutor, Physics & Maths',
                      style: GoogleFonts.dmSerifDisplay(),),
                      Text('Username@example.com',
                      style: GoogleFonts.dmSerifDisplay(),),
                      Text('PHD at Universiti Malaya',
                      style: GoogleFonts.dmSerifDisplay(),),
                      Text('Joined since 18 March 2023',
                      style: GoogleFonts.dmSerifDisplay(),),
                      SizedBox(height: 10),
                    ],
                  )
                 )
                ],
              )
            ),
         
      ],),
    );
  }
}