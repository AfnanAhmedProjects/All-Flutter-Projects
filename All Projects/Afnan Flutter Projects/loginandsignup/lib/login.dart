import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginandsignup/Auth/Auth_Service.dart';
import 'package:loginandsignup/components/myybutton.dart';
import 'package:loginandsignup/components/textfield.dart';

class loginpage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  final void Function()? ontap;
  void Login(BuildContext context) async {
    final authService = AuthService();
    try {
      await authService.signInWithEmailAndPassword(
          _emailcontroller.text, _passcontroller.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text(e.toString())));
    }
  }

  loginpage({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
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
              "------ Login Here ------",
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
              hint: "Enter Your Password",
              textcontroller: _passcontroller,
            ),
            SizedBox(
              height: 20,
            ),
            buttonnn(text: "Login", ontap: () => Login(context)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not Registred ? ",
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
                GestureDetector(
                  onTap: ontap,
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
