import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webproject/share/center_widget/center_widget.dart';
import 'package:webproject/share/navbar/navebar.dart';

class Supourt extends StatelessWidget {
  static const routeName = '/supourt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(
         children: <Widget>[
           Navbar(),
           CenterdedWidget(
             child: Container(
               child: Text('Supourt'),
             ),
           ),

         ],
       ),
        
      ),
    );
  }
}