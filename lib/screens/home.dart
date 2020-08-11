import 'package:bipp/components/customAppBar.dart';
import 'package:bipp/components/customListItem.dart';
import 'package:bipp/components/headerDecoration.dart';
import 'package:bipp/models/post.dart';
import 'package:bipp/screens/details.dart';
import 'package:bipp/services/api.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
                  decoration: headerDecoration(
                      'https://st.depositphotos.com/1030624/1474/i/450/depositphotos_14747437-stock-photo-nuts-and-bolts.jpg'),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Text("CURSOS E TREINAMENTOS",
                            style: Theme.of(context).primaryTextTheme.title),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Selecione o curso ou treinamento\nque deseja.",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .6,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: FutureBuilder(
                      future: getTrainings(),
                      builder: (context, snap) {
                        if (snap.hasData) {
                          List<Post> posts = snap.data;

                          return ListView.builder(
                            itemCount: posts.length,
                            itemBuilder: (context, i) {
                              return Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 1)),
                                  ),
                                  child: customColumn(
                                      posts[i],
                                      () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailsPage(
                                                  post: posts[i])))));
                            },
                          );
                        }
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
