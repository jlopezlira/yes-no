import 'package:flutter/material.dart';
import 'package:yes_no/widgets/chat/her_message_bubble.dart';
import 'package:yes_no/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/widgets/forms/message_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juan Mecanico 🚗'),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/women/88.jpg"),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return index % 2 == 0
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            const MessageField()
          ],
        ),
      ),
    );
  }
}
