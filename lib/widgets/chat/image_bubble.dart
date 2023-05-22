import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
  const ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/12-dafd576be23d3768641340f76658ddfe.gif',
        width: size.width * 0.8,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return SizedBox(
              width: size.width,
              height: 150,
              child: const Center(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}
