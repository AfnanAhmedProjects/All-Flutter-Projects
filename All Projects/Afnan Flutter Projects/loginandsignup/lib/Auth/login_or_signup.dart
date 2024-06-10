import 'package:flutter/material.dart';
import 'package:loginandsignup/Register.dart';
import 'package:loginandsignup/login.dart';

class loginorsingup extends StatefulWidget {
  const loginorsingup({super.key});

  @override
  State<loginorsingup> createState() => _loginorsingupState();
}

class _loginorsingupState extends State<loginorsingup> {
  bool showloginpage = true;
  void togglepages() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return loginpage(ontap: togglepages);
    } else {
      return signup(ontap: togglepages);
    }
  }
}
