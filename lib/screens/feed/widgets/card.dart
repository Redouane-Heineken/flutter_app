import 'package:flutter/material.dart';
import 'package:flutter_app/screens/feed/widgets/card_body.dart';
import 'package:flutter_app/screens/feed/widgets/card_footer.dart';
import './post.dart';
import 'dart:convert';
import 'dart:async';
import 'package:intl/intl.dart';
// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'card_header.dart';
import 'card_body.dart';
class FeedCard extends StatefulWidget {
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FeedCard();
  }

}

class  _FeedCard extends State<FeedCard> {
  
  bool pressed = false;
  // Future<List<Post>> posts;
  Color color_1 = Colors.grey;
  // @override
  // void initState() {
  //   super.initState();
  //   posts = fetchPost();
  // }

  Future<List<dynamic>> _fetchPost() async {
  final response =
      await http.get('http://www.json-generator.com/api/json/get/cfyyptXtIO?indent=2');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    // List<Map<String, dynamic>> users = json.decode(response.body);
    var users = json.decode(response.body);
    var posts = [];
    for (var user in users) {
      posts.add(Post.fromJson(user));
    }
    
    // for (var user in posts) {
    //   print(user.login);
    //   print(user.avatarUrl);
    // }
    print(posts);
    return posts;
  } else {
    // If that response was not OK, throw an error.
    throw Exception('##########################Failed to load post#######################################');
  }
}
  // get posts => _fetchPost();

  @override
  Widget build(BuildContext context) => Container(
    alignment: Alignment.center,
    child: FutureBuilder(
      future: _fetchPost(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // if (snapshot.data == null) return Text('Loading ...');
        return Container(

          width: 403,
          child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {

              // print(snapshot.data.length);
              return Container(
//              color: Colors.grey,
                height: 382,
                width: 397,
                child:  Card(
//                  color: Colors.grey,
                  child: Column(
                    children: <Widget>[
                      CardHeader(
                          login: snapshot.data[index].name,
                          avatarUrl: snapshot.data[index].picture
                      ),
                      Expanded(child:CardBody()),
                      CardFooter()
                    ],
                  ),
                ),
              );
            },
          )
        );
      }
    ),
  );

}



// ALL THE USED WIDGETS

/*
 
 * Card
 * Column
 * Container
 * ListTile
 * CircleAvatar

 */