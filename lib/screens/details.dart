import 'package:bipp/components/customAppBar.dart';
import 'package:bipp/components/headerDecoration.dart';
import 'package:bipp/models/post.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Post post;

  DetailsPage({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width,
                  decoration: headerDecoration(post.image),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text(post.name.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).primaryTextTheme.title),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Container(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: Text(post.content),
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
