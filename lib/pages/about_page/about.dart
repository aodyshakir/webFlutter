import 'package:flutter/material.dart';
import 'package:webproject/share/center_widget/center_widget.dart';
import 'package:webproject/share/navbar/navebar.dart';


class AboutPage extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(
         children: <Widget>[
           Navbar(),
           CenterdedWidget(
             child: Container(
               child: Text('about'),
             ),
           ),

         ],
       ),
        
      ),
    );
  }
}
