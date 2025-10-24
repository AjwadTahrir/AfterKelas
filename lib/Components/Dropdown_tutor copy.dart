import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownMenu2 extends StatefulWidget {
  const DropdownMenu2({super.key});

  @override
  State<DropdownMenu2> createState() => _DropdownMenu2State();
}

class _DropdownMenu2State extends State<DropdownMenu2> {
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
          DropdownMenuItem<String>(value: '2', child: Text('Physics')),
          DropdownMenuItem<String>(value: '3', child: Text('Chemistry')),
          DropdownMenuItem<String>(value: '4', child: Text('Programming')),
          DropdownMenuItem<String>(value: '5', child: Text('Maths')),],
        
        );
  }
}
