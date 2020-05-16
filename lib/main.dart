import 'package:flutter/material.dart';

import 'package:webproject/pages/about_page/about.dart';
import 'package:webproject/pages/homepage/homepage.dart';
import 'package:webproject/pages/supourt/supourt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName: (_) => MyHomePage(),
        AboutPage.routeName: (_) => AboutPage(),
        Supourt.routeName: (_) => Supourt(),

       

      },
    );
  }
}



