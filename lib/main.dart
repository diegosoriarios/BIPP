import 'package:bipp/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIPP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromRGBO(243, 243, 243, 1),
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Color.fromRGBO(251, 80, 0, 1),
            fontWeight: FontWeight.bold,
            fontSize: 20
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}