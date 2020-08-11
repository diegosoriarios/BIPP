import 'package:flutter/material.dart';

Widget customAppBar() {
  return AppBar(
    leading: Image.asset('assets/logo.png', width: 50, height: 50, fit: BoxFit.cover),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.short_text),
      )
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}