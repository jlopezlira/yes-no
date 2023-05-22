import 'package:flutter/material.dart';
class MessageField extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageField({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: textFormField(textController, focusNode),
    );
  }

  TextFormField textFormField(TextEditingController textController, FocusNode focusNode) {
    return TextFormField(
        controller: textController,
        focusNode: focusNode,
        onTapOutside: (event) => focusNode.unfocus(),
        decoration: InputDecoration(
          filled: true,
          hintText: 'Type a message and end with a "?"',
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              final message = textController.text;
              textController.clear();
              focusNode.requestFocus();
              onValue(message);
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ));
  }
}
