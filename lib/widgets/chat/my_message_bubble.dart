import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'My messages',
              style: TextStyle(color: Colors.white),
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
