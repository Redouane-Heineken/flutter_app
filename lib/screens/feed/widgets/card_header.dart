import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'post.dart';

class CardHeader extends StatefulWidget {
  final String avatarUrl;
  final String login;

  CardHeader({@required this.login, @required this.avatarUrl});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
//    return _CardHeader(login, avatarUrl);
    return _CardHeader();
  }
}

class _CardHeader extends State<CardHeader> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
//          color: Colors.black,
          height: 72,
          width: 397,
          child: Row(
            children: <Widget>[

              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(0.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.avatarUrl),
                )
              ),

              Container(
//                color: Colors.black54,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
//                      color: Colors.brown,
                      height: 34,
                      width: 272,
                      child: Text(
                          widget.login,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                        ),
                      )
                    ),

                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 22,
                      width: 272,
                      child: Text(
                          "00:00 14-09",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        )
                      ),
                    )
                  ],
                ),
              ),

              Container(
//                color: Colors.grey,
                height: 56,
                margin: EdgeInsets.only(right: 3),
                child: IconButton(
                  alignment: Alignment.topCenter,
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {
                    print("dragdown_menu_icon pressed");
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent
                ),
              )
            ],
          )
        )
      ],
    );
  }
}

