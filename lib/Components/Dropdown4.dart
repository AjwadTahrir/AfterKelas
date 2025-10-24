import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownMenu4 extends StatefulWidget {
  const DropdownMenu4({super.key});

  @override
  State<DropdownMenu4> createState() => _DropdownMenu4State();
}

class _DropdownMenu4State extends State<DropdownMenu4> {
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
          DropdownMenuItem<String>(value: '2', child: Text('Degree')),
          DropdownMenuItem<String>(value: '3', child: Text('Foundation')),
          DropdownMenuItem<String>(value: '4', child: Text('STPM')),
          DropdownMenuItem<String>(value: '5', child: Text('Matrics')),],
        
        );
  }
}
