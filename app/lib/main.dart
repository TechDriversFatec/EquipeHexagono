import 'package:flutter/material.dart';
import 'package:app/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
