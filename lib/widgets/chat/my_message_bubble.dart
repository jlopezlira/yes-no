import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    final Color colors = Theme.of(context).colorScheme.primary;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
