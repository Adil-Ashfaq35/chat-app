import 'package:flutter/material.dart';
import 'package:frency_chat/Chat_Screen.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text("Frenzy Chat")),
      ),
      body: ChatScreen()
    );
  }
}