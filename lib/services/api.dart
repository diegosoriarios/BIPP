
import 'dart:convert';

import 'package:bipp/models/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<List<Post>> getTrainings() async {
  var data = await rootBundle.loadString("assets/data.json");
  var response = jsonDecode(data);
  
  return (response as List).map((post) => Post.fromJson(post)).toList();
}