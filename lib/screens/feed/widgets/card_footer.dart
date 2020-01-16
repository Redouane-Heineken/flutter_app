//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class CardFooter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardFooter();
  }
}

class _CardFooter extends State<CardFooter>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 45,
      width: 397,
//      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //LIKE BUTTON
          Container(
            alignment: Alignment.centerLeft,
//            color: Colors.grey,
            width: 131,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(

                  padding: EdgeInsets.all(0.0),
                  margin: EdgeInsets.all(0.0),
                  width: 40,
                  alignment: Alignment.centerLeft,
                  height: 40,
                  color: Colors.white,
                  child: IconButton(
//                  padding: EdgeInsets.only(left: 30),
                    onPressed: () {
                      print('favorite_icon pressed');
                    },
                    color: Colors.grey,
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                  ),
                ),

                Container(
                  width: 91,
//                  color: Colors.brown,
                  child: Text(
                      '1000',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )
          ),

          //COMMENT BUTTON
          Container(
              alignment: Alignment.centerLeft,
//            color: Colors.grey,
              width: 131,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(

                    padding: EdgeInsets.all(0.0),
                    margin: EdgeInsets.all(0.0),
                    width: 40,
                    alignment: Alignment.centerLeft,
                    height: 40,
                    color: Colors.white,
                    child: IconButton(
//                  padding: EdgeInsets.only(left: 30),
                      onPressed: () {
                        print('comment_icon pressed');
                      },
                      color: Colors.grey,
                      icon: Icon(
                        Icons.insert_comment,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  Container(
                    width: 91,
//                  color: Colors.brown,
                    child: Text(
                      '1000',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
          ),


          //SHARE BUTTON
          Container(
              alignment: Alignment.centerLeft,
//            color: Colors.grey,
              width: 131,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(

                    padding: EdgeInsets.all(0.0),
                    margin: EdgeInsets.all(0.0),
                    width: 40,
                    alignment: Alignment.centerLeft,
                    height: 40,
                    color: Colors.white,
                    child: IconButton(
//                  padding: EdgeInsets.only(left: 30),
                      onPressed: () {
                        print('share_icon pressed');
                      },
                      color: Colors.grey,
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  Container(
                    width: 91,
//                  color: Colors.brown,
                    child: Text(
                      '1000',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}

