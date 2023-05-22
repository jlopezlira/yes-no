import 'package:flutter/material.dart';
import 'package:yes_no/widgets/chat/image_bubble.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final Color colors = Theme.of(context).colorScheme.secondary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'Her messages',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        const ImageBubble(),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
