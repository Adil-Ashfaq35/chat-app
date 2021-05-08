import 'package:flutter/material.dart';
import 'package:frency_chat/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "chat_app",
      home: new HomePage(),
    );
  }
}



