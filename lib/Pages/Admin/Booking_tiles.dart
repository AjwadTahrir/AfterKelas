import 'package:afterkelas/Comfirmation_page.dart/ApprovedPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingAdminTiles extends StatelessWidget {
  final String subject;
  final String name;
  final String price;
  const BookingAdminTiles({
    required this.subject, required this.name, required this.price ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children:[
          SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      tileColor: Colors.brown[100],
                      leading: Icon(Icons.shopping_bag_outlined, size: 40,),
                      title: Text(name),
                      subtitle: Text(subject+"\n"+"RM"+price+".00"),
                      trailing: IconButton(onPressed: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>ApprovedPage(),
                        ));
                      }, icon: Icon(Icons.check)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    ),
                  ),
        ]),
    );
  }
}