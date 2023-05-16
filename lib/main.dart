import 'package:flutter/material.dart';
import 'package:yes_no/screens/chat/chat_screen.dart';
import 'package:yes_no/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor: 6,
      ).theme(),
      title: 'Yes/No App',
      home: const ChatScreen(),
    );
  }
}
