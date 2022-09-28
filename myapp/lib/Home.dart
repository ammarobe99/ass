import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/screens/login_gmail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          // ignore: sort_child_properties_last
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return Log_in();
                      }),
                    ),
                  );
                },
                child: Text(
                  "Log-In Page",
                  style: TextStyle(fontFamily: "DancingScript", fontSize: 30),
                )),
            Divider(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Sign_up();
                  })));
                },
                child: Text(
                  "Sign-Up Page",
                  style: TextStyle(fontFamily: "DancingScript", fontSize: 30),
                )),
          ]),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/OIP (2).jpg")),
          ),
        ),
      ),
    );
  }
}
