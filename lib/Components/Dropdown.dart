import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownMenu1 extends StatefulWidget {
  const DropdownMenu1({super.key});

  @override
  State<DropdownMenu1> createState() => _DropdownMenu1State();
}

class _DropdownMenu1State extends State<DropdownMenu1> {
  String dropdownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_drop_down),
        underline: Container(
          height: 2,
          color: Colors.black,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: [
          DropdownMenuItem<String>(value: 'one', child: Text('Please choose one')),
          DropdownMenuItem<String>(value: '2', child: Text('10/2, 10:00am - 11:00am')),
          DropdownMenuItem<String>(value: '3', child: Text('10/2, 12:00pm - 1:00pm')),
          DropdownMenuItem<String>(value: '4', child: Text('10/2, 2:00am - 3:00am')),
          DropdownMenuItem<String>(value: '5', child: Text('11/2, 8:00am - 9:00am')),],
        
        );
  }
}
