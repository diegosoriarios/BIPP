import 'package:bipp/models/post.dart';
import 'package:flutter/material.dart';

Widget customColumn(Post post, Function navigate) {
    return ListTile(
      title: Text(
        post.name,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      trailing: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.network(
          post.image,
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        )
      ),
      onTap: navigate
    );
  }