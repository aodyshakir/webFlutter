import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webproject/content/landingpage.dart';

import 'package:webproject/share/navbar/navebar.dart';
class MyHomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navigation(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}