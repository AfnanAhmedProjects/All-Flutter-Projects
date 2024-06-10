import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginandsignup/Auth/Auth_Service.dart';
import 'package:loginandsignup/components/myybutton.dart';
import 'package:loginandsignup/components/textfield.dart';

class signup extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passscontroller = TextEditingController();
  final TextEditingController _Confirmpasscontroller = TextEditingController();
  final void Function()? ontap;
  void Register(BuildContext context) {
    final _auth = AuthService();

    if (_passscontroller.text == _Confirmpasscontroller.text) {
      try {
        _auth.signupwithEmailandPassword(
            _emailcontroller.text, _passscontroller.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      Text("non");
    }
  }

  signup({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Icon(
            Icons.person,
            size: 60,
            color: Colors.yellow,
          ),
          Text(
            "Welcome To Application",
            style: TextStyle(color: Colors.yellow, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "------ Register Here ------",
            style: TextStyle(color: Colors.yellow, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          mytextfeild(
            PasswordType: false,
            hint: "Enter Your Email",
            textcontroller: _emailcontroller,
          ),
          SizedBox(
            height: 20,
          ),
          mytextfeild(
            PasswordType: true,
            hint: "Enter New Password",
            textcontroller: _passscontroller,
          ),
          SizedBox(
            height: 20,
          ),
          mytextfeild(
            PasswordType: true,
            hint: "Confirm Password",
            textcontroller: _Confirmpasscontroller,
          ),
          SizedBox(
            height: 20,
          ),
          buttonnn(text: "Register", ontap: () => Register(context)),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Registred ? ",
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
              GestureDetector(
                onTap: ontap,
                child: Text(
                  "Login Here",
                  style: TextStyle(
                      color: Colors.yellow, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
