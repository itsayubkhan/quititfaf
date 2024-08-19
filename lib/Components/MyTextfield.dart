import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class MyTextField extends StatelessWidget{
  final Function()? onchange;
  final String label;
  final controller;
  final Style;
  final Function()? ontap;
  final bool readonly;


  MyTextField({
    required this.readonly,
    required this.ontap,
    required this.onchange,
    required this.controller,
    required this.label,
    required this.Style,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readonly,
      onTap: ontap,
      keyboardType: TextInputType.number,
      onChanged: (val){
        onchange?.call();
      },
      controller: controller,
      style: Style,
      cursorColor: Color(0xFF64C397),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: 'Eina',
          color: Color(0xFF64C397),
        ),
        border: OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xFF64C397),
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xFF4E7761),
            width: 1.5,
          ),
        ),
      ),
    );
  }

}