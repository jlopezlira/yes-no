

import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Message 1', fromWho: FromWho.me),
    Message(text: 'Message 2', fromWho: FromWho.other),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    messages.add(Message(text: text, fromWho: FromWho.me));
    notifyListeners();
    scrollToBottom();
  }

  void scrollToBottom() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

}