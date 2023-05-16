import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi amor ❤️'),
          centerTitle: false,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/88.jpg"),
            ),
          ) ,
        ),
        body: Center(
          child: FilledButton(onPressed: () {  },
          child: const Text('Hello Yes/No App!')),
        ),
      );
  }
}