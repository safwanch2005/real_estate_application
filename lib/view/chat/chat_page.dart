import 'package:flutter/material.dart';
import 'package:real_estate_application/view/theme/theme_data.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.black,
      body: Center(
          child: Icon(Icons.message_outlined,
              size: 100, color: AppThemeData.grey)),
    );
  }
}