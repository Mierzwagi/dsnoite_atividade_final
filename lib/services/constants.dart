import 'package:flutter/material.dart';

const String serverAddress = '10.92.198.50:1111';

const Color mainColor = Colors.indigo;
const InputDecoration textFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(8),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(
      color: Colors.indigo,
      width: 1,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color: Colors.indigo, width: 1),
  ),
  filled: true,
  fillColor: Color.fromARGB(50, 135, 237, 255),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  ),
);
const TextStyle titleStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.w500);
const TextStyle titleStyleOr =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
const boxShadow = [
  BoxShadow(
    blurRadius: 8,
    color: Color(0x33000000),
    offset: Offset(0, 2),
    spreadRadius: 4,
  ),
];
