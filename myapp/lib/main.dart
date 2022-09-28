import 'package:flutter/material.dart';
import 'package:myapp/screens/login_gmail.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
