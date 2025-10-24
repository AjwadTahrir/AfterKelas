import 'package:afterkelas/Components/payment_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentHistoryPage extends StatelessWidget {
  const PaymentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(color: Colors.black,),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Payment History',
                        style: GoogleFonts.dmSerifDisplay(fontSize: 36))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                PaymentHistoryTile(date: '12/5/2024', amount: '30'),
                PaymentHistoryTile(date: '5/5/2024', amount: '20'),
                PaymentHistoryTile(date: '23/4/2024', amount: '35'),
                PaymentHistoryTile(date: '14/4/2024', amount: '35'),
                PaymentHistoryTile(date: '10/4/2024', amount: '40'),
                PaymentHistoryTile(date: '5/4/2024', amount: '10'),
                PaymentHistoryTile(date: '29/3/2024', amount: '15'),
                PaymentHistoryTile(date: '21/3/2024', amount: '30'),
                PaymentHistoryTile(date: '12/3/2024', amount: '10'),
                PaymentHistoryTile(date: '5/3/2024', amount: '10'),
              ],
            )));
  }
}
