import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookingClassTile extends StatelessWidget {
  final String subject;
  final String imagePath;
  final String price;
  final Color;
  void Function()? onPressed;

  BookingClassTile(
      {super.key,
      required this.Color,
      required this.subject,
      required this.imagePath,
      required this.price,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            imagePath,
            height: 64,
          ),
          Text(subject),
          MaterialButton(
            color: Colors.brown,
            onPressed: onPressed,
            child: Text(
              "RM " + price + "/hour",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
