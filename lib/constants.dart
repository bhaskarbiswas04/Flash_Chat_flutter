import 'package:flutter/material.dart';

const kScaffoldBackgroundColor = Color(0xFF618264);

const kWelcomeScreenTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color.fromARGB(255, 26, 26, 26),
  fontWeight: FontWeight.w700,
);

const kSendButtonTextStyle = TextStyle(
  color: Color(0xFFD0E7D2),
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(fontSize: 20.0),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xFFB0D9B1), width: 2.0),
  ),
);

const kTextfieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Color(0xFFD0E7D2), fontSize: 20.0),
  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 22.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFB0D9B1), width: 3.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF79AC78), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
