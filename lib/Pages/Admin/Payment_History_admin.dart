import 'package:afterkelas/Components/payment_history_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentHistoryAdminPage extends StatelessWidget {
  const PaymentHistoryAdminPage({super.key});

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
                Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Payment History',
                        style: GoogleFonts.dmSerifDisplay(fontSize: 36))),
                SizedBox(
                  height: 5,
                ),
                PaymentHistoryAdminTile(date: '12/5/2024', amount: '30', name: 'Adam Haikal'),
                PaymentHistoryAdminTile(date: '12/5/2024', amount: '30', name: 'Syahmil A Norzi'),
                PaymentHistoryAdminTile(date: '12/5/2024', amount: '30', name: 'Adam Hariz'),
                PaymentHistoryAdminTile(date: '12/5/2024', amount: '30', name: 'Hakim'),
                PaymentHistoryAdminTile(date: '12/5/2024', amount: '30', name: 'Zahfran'),
                PaymentHistoryAdminTile(date: '12/5/2024', amount: '30', name: 'Hilman'),
              ],
            )));
  }
}
