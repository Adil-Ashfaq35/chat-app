import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
const String _name ="Adil";
class ChatMessages extends StatelessWidget {
  final String text;

  ChatMessages({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(

          crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          new Container(
            margin: const EdgeInsets.only(right: 4.0),
            child: new CircleAvatar(
              child: Text(_name[0]),
            ),

          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(_name ,style: Theme.of(context).textTheme.subtitle1),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
