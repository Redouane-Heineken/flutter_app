import 'package:flutter/material.dart';
import 'package:flutter_app/screens/feed/feed.dart';
import './screens/feed/widgets/card.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // routes: ,
      // darkTheme: ,
      home: Scaffold(
        
        backgroundColor: Colors.grey,
        body: Center(
          
          // child: FeedCard(),
          child: Scaffold(
              // backgroundColor: Colors.black,
                body: Feed(),
          ),
        ) 
      ),
    );
  }

}