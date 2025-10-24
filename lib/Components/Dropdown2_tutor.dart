import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownMenu3 extends StatefulWidget {
  const DropdownMenu3({super.key});

  @override
  State<DropdownMenu3> createState() => _DropdownMenu3State();
}

class _DropdownMenu3State extends State<DropdownMenu3> {
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
          DropdownMenuItem<String>(value: '2', child: Text('Notes')),
          DropdownMenuItem<String>(value: '3', child: Text('Tutorials')),],
        
        );
  }
}
