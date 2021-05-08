import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:frency_chat/chat_Messages.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _msgController =new TextEditingController();
  final List<ChatMessages> _message= <ChatMessages>[];

         void _handleSubmitted(String text)
         {
          _msgController.clear();
          ChatMessages message =new ChatMessages(
            text: text,
          );
          setState(() {
            _message.insert(0, message);

          });


       }

  Widget _textComposerWidget(){
    return IconTheme(
      data: new IconThemeData(
        color: Colors.blue,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: [
            new Flexible(
              child: new TextField(

                decoration: new InputDecoration.collapsed(
                    hintText: "Send a message"
                ),
                controller: _msgController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            new Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed:() => _handleSubmitted(_msgController.text),
              ),
            )

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index)=> _message[index],
            itemCount: _message.length,

          ),
        ),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        ),
      ],
    );
  }
}
