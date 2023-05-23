

import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    messages.add(Message(text: text, fromWho: FromWho.me));

    if (text.endsWith('?')) {
      await herReply();
    }
    scrollToBottom();
    notifyListeners();
  }

  Future<void> herReply() async {
    final answer = await getYesNoAnswer.getAnswer();
    messages.add(answer);
    scrollToBottom();
    notifyListeners();
  }

  void scrollToBottom() {
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOut,
    );
  }

}