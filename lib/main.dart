import "package:flutter/material.dart";
import 'app_screens/first_screen.dart';
import 'app_screens/home.dart';
import 'app_screens/row_coloum.dart';

//void main() => runApp(new MyFlutterApp());

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Basic List View"),),
      body: getListView(),
    ),
    //home: RowsAndColum(),
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

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () => debugPrint("Landscape tapped"),
      ),
      ListTile(
        leading: Icon(Icons.computer),
        title: Text("Landscape"),
      ),ListTile(
        leading: Icon(Icons.battery_alert),
        title: Text("Landscape"),
      ),ListTile(
        leading: Icon(Icons.phone),
        title: Text("Landscape"),
      ),
      Text("Yet another element in List"),
      Container(color: Colors.red, height: 50.0,)

    ],
  );
  return listView;
}
