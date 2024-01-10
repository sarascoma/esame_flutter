import 'package:flutter/material.dart';

class MessageAiWidget extends StatelessWidget {
  const MessageAiWidget({super.key,required this.label});
    
    final String label;

  @override
  Widget build(BuildContext context) {
    return const Text('AI');
  }
}