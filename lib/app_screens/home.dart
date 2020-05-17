import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      padding: EdgeInsets.only(top: 30.0,left: 10.0),
      child:Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(child:Text(
              "Demo Data",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto'
              ),)),
            Expanded (child:Text(
              "Anitha Sample Text",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto'
              ),)),
          ],),Row(children: <Widget>[
            Expanded(child:Text(
              "Geethika",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 30.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto'
              ),)),
            Expanded (child:Text(
              "Anitha Sample Text",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'Roboto'
              ),)),
          ],),
          PizzImage(),
          OrderButton(),
        ],

      )
    ));
  }
}

class PizzImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizz =AssetImage('assets/images/aarogya_setu_icon.png');
    Image img =Image(image: pizz,width: 150.0,height: 150.0,);
    return Container(child: img);
  }

}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top:30.0),
      child:RaisedButton(
        child:Text("Order Your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: (){
        order(context);
        },

      )
    );
   return button;
  }

  void order(BuildContext context){
    var alert =AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thankq for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context){
          return alert;
      }
    );

  }

}