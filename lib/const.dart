import 'package:flutter/material.dart';

OutlineInputBorder myBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: Colors.black38,
  ),
);

TextStyle loginTitleTextStyle = TextStyle(
  color: Colors.blueAccent,
  fontSize: 26,
  fontWeight: FontWeight.w700,
);

InputDecoration usernameDecoration = InputDecoration(
  labelText: 'Username',
  hintText: 'Input your username',
  enabledBorder: myBorder,
  focusedBorder: myBorder,
);
