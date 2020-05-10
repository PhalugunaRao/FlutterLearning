
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
      body: getListViewData(),
      floatingActionButton: FloatingActionButton(
        onPressed :(){
          debugPrint("FAB CLICK");
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
      ),
    ),
    //home: RowsAndColum(),
  ));
}

void showSnackBar( BuildContext context, String  item){
  var snackBar = SnackBar(
    content: Text("you just tapped $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint("on click undo");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
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

List<String> getListElements(){
  var items = List<String>.generate(300, (counter) => "Item $counter");
  return items;
}

Widget getListViewData(){
  var listItems =getListElements();
  var listView =ListView.builder(
      itemBuilder: (context,index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: (){
          showSnackBar(context,listItems[index]);
          debugPrint('${listItems[index]} was tapped');
        },
      );
   }
  );
  return listView;
}
