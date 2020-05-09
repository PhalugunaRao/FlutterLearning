import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

  return Center(
    child:  Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      //width:200.0,
     // height :100.0,
     // margin: EdgeInsets.only(left:40.0,top: 20.0),
      //padding: EdgeInsets.all(20.0),
      child: Text(
          "Flight",
          textDirection: TextDirection.ltr,
        style: TextStyle(
           decoration: TextDecoration.none,
            fontSize: 50.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic
        ),
      ),
    )
  );
  }
}