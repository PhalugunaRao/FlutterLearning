import "package:flutter/material.dart";
import 'app_screens/first_screen.dart';
import 'app_screens/home.dart';

//void main() => runApp(new MyFlutterApp());

void main(){
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Home(),
  ));
}

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
          appBar: AppBar(title: Text("Geethika App"),),
          body : FirstScreen()
        )
    );
  }

}