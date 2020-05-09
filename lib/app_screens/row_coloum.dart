import 'package:flutter/material.dart';


class RowsAndColum extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:  Container(
          padding: EdgeInsets.only(left: 10.0,top: 70.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(child: Text(
                      "Flight",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),
                    )),
                    Expanded(child: Text(
                      "Flight Demo Samples from mumbai to delhi via kolakat",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),
                    )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Text(
                      "Flight",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),
                    )),
                    Expanded(child: Text(
                      "Flight Demo Samples from mumbai to delhi via kolakat",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),
                    )
                    ),
                  ],
                )

              ],
            )



          /*child: Row(
            children: <Widget>[
             Expanded(child: Text(
                "Flight",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                ),
              )),
              Expanded(child: Text(
                "Flight Demo Samples from mumbai to delhi via kolakat",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                ),
              )
              ),
            ],
          )
*/

        )
    );
  }
  
}