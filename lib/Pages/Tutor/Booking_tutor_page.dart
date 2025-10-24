import 'package:afterkelas/Pages/Tutor/AddAvailabilityPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';



class BookingTutorPage extends StatelessWidget {
  const BookingTutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[300],
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AddAvailabilityPage();
        })),
        child: Icon(Icons.add_outlined, color: Colors.white,),
      ),
      body:ListView(
        children: [
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          SizedBox(height: 10),
          Padding(
            child: Text(
              "Your class, Your rule",
              style: GoogleFonts.dmSerifDisplay(fontSize: 32,
              height:1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
            SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text("Manage Your Availability",
            style:GoogleFonts.dmSerifDisplay(
              color: Colors.black,
              fontSize:20
            )),
          ),
          availabilityTile(date: "12/2/2024 \n(8.00 a.m - 9.00 a.m)" , amount: "8",subject: "Physics",),
          availabilityTile(date: "12/2/2024 \n(8.00 a.m - 9.00 a.m)" , amount: "8",subject: "Physics",),
          availabilityTile(date: "12/2/2024 \n(8.00 a.m - 9.00 a.m)" , amount: "8",subject: "Physics",),
          availabilityTile(date: "12/2/2024 \n(8.00 a.m - 9.00 a.m)" , amount: "8",subject: "Physics",),
          availabilityTile(date: "12/2/2024 \n(8.00 a.m - 9.00 a.m)" , amount: "8",subject: "Physics",),
    
          ],)
  

      
    );
  }
}



class availabilityTile extends StatelessWidget{
  final String date;
  final String subject;
  final String amount;
 const availabilityTile({super.key,
 required this.subject,
 required this.date,
 required this.amount});
 @override
 Widget build(BuildContext context){
 return Container(
  
  margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children:[
          SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: ListTile(
                      tileColor: Colors.brown[100],
                      leading: Icon(Icons.book_outlined,color: Colors.black,size: 40,),
                      title: Text(date),
                      subtitle: Text(subject+'\nRM ' + amount + '.00'),
                      isThreeLine: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    ),
                  ),
        ]),
    );
}}
