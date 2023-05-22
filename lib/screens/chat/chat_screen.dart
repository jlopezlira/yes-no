import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/providers/chat_provider.dart';
import 'package:yes_no/widgets/chat/her_message_bubble.dart';
import 'package:yes_no/widgets/chat/my_message_bubble.dart';
import 'package:yes_no/widgets/forms/message_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Babe ❤️'),
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

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = chatProvider.messages[index];
                return message.fromWho == FromWho.other ?  const HerMessageBubble() : MyMessageBubble(
                  message: message,
                );
              },
            )),
            MessageField(
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
