import 'package:flutter/material.dart';

class mytextfeild extends StatelessWidget {
  final bool PasswordType;
  final TextEditingController textcontroller;
  final String hint;
  const mytextfeild(
      {super.key,
      required this.PasswordType,
      required this.hint,
      required this.textcontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        obscureText: PasswordType,
        controller: textcontroller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow)),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),
      ),
    );
  }
}
