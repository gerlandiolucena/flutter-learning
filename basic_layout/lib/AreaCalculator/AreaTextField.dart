import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AreaTextField extends StatelessWidget {
  AreaTextField({required this.controller, required this.hint});

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
        margin: EdgeInsets.all(15.0),
        child:TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.w300,
              fontSize: 24.0
          ),
          decoration: InputDecoration(
            prefixIcon: hint == "Width" ? Icon(Icons.border_bottom) : Icon(Icons.border_left),
            filled: true,
            fillColor: Colors.transparent,
            hintText: hint,

          ),
        )
        )
    );
  }
}