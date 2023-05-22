

import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Message 1', fromWho: FromWho.me),
    Message(text: 'Message 2', fromWho: FromWho.other),
  ];

  Future<void> sendMessage(String text) async {
    messages.add(Message(text: text, fromWho: FromWho.me));
    notifyListeners();
  }

}