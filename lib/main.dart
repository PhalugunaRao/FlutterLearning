import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Simple Interest Calculator App',
    home: SIForm(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent

    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SIFormState();
  }
}

class SIFormState extends State<SIForm> {
  final _minmumPadding = 5.0;
  var _currencies =['Rupess','Doller','Others'];

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =Theme.of(context).textTheme.headline6;
    return Scaffold(
     // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(_minmumPadding * 2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(
                    top: _minmumPadding, bottom: _minmumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: textStyle,
                  decoration: InputDecoration(
                      labelText: 'Principle',
                      hintText: 'Enter Principal  e.g  12000',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minmumPadding, bottom: _minmumPadding),
                child:TextField(
                  keyboardType: TextInputType.number,
              style: textStyle,
              decoration: InputDecoration(
                  labelText: 'Rate of Interest',
                  hintText: 'In percent',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            )),
            Padding(
              padding: EdgeInsets.only(top: _minmumPadding,bottom: _minmumPadding),
                child: Row(
              children: <Widget>[
               Expanded(
                   child: TextField(
                     keyboardType: TextInputType.number,
                  style: textStyle,
                  decoration: InputDecoration(
                      labelText: 'Principle',
                      hintText: 'Enter Principal  e.g  12000',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
                Container(width: _minmumPadding*5),
                Expanded(child:DropdownButton<String>(
                  items: _currencies.map((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: 'Rupess',
                  onChanged: (String newValueSelected){

                  },

                ))
              ],
            )),
            Padding(
              padding: EdgeInsets.only(top: _minmumPadding,bottom: _minmumPadding),
                child:Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    textColor: Theme.of(context).primaryColorDark,
                    child: Text('Calculate',textScaleFactor: 1.5,),
                    onPressed: (){

                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text('Reset',textScaleFactor: 1.5,),
                    onPressed: (){

                    },
                  ),
                )
              ],
            )),
            Padding(
              padding: EdgeInsets.all(_minmumPadding*2),
              child: Text('Todo Text',style: textStyle,),
            )

          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/aarogya_setu_icon.png');
    Image image = Image(image: assetImage, width: 120.0, height: 120.0);
    return Container(
      child: image,
      margin: EdgeInsets.all(_minmumPadding * 10),
    );
  }
}
