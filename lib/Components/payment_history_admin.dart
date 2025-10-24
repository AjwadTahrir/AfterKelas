import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentHistoryAdminTile extends StatelessWidget {
  final String date;
  final String amount;
  final String name;
  const PaymentHistoryAdminTile({
    required this.date,
    required this.amount,
    required this.name,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: ListTile(
                      tileColor: Colors.brown[100],
                      leading: Icon(Icons.attach_money,color: Colors.black,size: 30,),
                      title: Text(name),
                      subtitle: Text(date+'\nRM ' + amount + '.00'),
                      trailing: Icon(Icons.check, color: Colors.green[700],),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    ),
                  ),
        ]),
    );
  }
}