import 'package:flutter/material.dart';

BoxDecoration headerDecoration(String image) {
  return BoxDecoration (
    color: Colors.black,
    image: DecorationImage(
      image: NetworkImage(image),
      fit: BoxFit.cover,
      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
    )
  );
}