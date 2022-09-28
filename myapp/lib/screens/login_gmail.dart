import 'package:myapp/screens/login_gmail.dart';
import 'package:flutter/material.dart';

class login_gmail extends StatefulWidget {
  const login_gmail({super.key});

  @override
  State<login_gmail> createState() => _login_gmail();
}

String y = "ammar";

class _login_gmail extends State<login_gmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black, title: Text("heloo")),
        body: Container(
          height: double.infinity,
          child: Image(
            image: AssetImage(
                "images/WhatsApp Image 2022-09-28 at 3.45.12 PM.jpeg"),
            fit: BoxFit.fill,
          ),
        ));
  }
}
