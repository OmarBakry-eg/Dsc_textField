import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final InputDecoration inputDecoration;
  final bool obscure;
  final Function onChange;
  MyTextField({this.inputDecoration, this.onChange, this.obscure});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: obscure,
        onChanged: onChange,
        decoration: inputDecoration,
      ),
    );
  }
}
