import 'package:flutter/material.dart';
import 'package:loginandsignup/Auth/Auth_Service.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});
  void signout() {
    final _auth = AuthService();
    _auth.SignOut();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: const SizedBox(
            height: 60,
            child: Center(
              child: Text("Home Page Accessed",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 39.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ),
    ));
  }
}
