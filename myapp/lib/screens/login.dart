import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/screens/login_gmail.dart';
import 'login_gmail.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  String? emali;
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: Container(
        color: Color.fromARGB(255, 112, 163, 205),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage("images/R.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  onChanged: (value) {
                    emali = value;
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0), width: 4)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Please enter your email",
                      label: Text(
                        "Email",
                        style: TextStyle(fontSize: 25),
                      ),
                      prefixIcon: Icon(Icons.email)),
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  onChanged: (value) {
                    pass = value;
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 4)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Please enter your password",
                      label: Text(
                        "password",
                        style: TextStyle(fontSize: 25),
                      ),
                      prefixIcon: Icon(Icons.password)),
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.center,
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {
                    if (emali == "ammar1999@gmail.com" && pass == "ammar12345")
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return login_gmail();
                      })));
                  },
                  // ignore: prefer_const_constructors
                  child: Text(
                    "log in gmail",
                    style: TextStyle(fontFamily: "DancingScript", fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
