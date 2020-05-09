import "package:flutter/material.dart";
import 'app_screens/first_screen.dart';
import 'app_screens/home.dart';
import 'app_screens/row_coloum.dart';

//void main() => runApp(new MyFlutterApp());

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: RowsAndColum(),
  ));
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Geethika App"),
            ),
            body: FirstScreen()));
  }
}
