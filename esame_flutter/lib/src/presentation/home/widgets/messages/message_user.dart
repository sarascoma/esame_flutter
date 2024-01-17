import 'package:flutter/material.dart';

class MessageUserWidget extends StatelessWidget {
  const MessageUserWidget({super.key,required this.label});
    
    final String label;

  @override
  Widget build(BuildContext context) {
     return Container(
      margin: const EdgeInsets.only(right: 20, top: 15, left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 38, 53, 96),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "You",
              style: TextStyle(
                color: Color.fromARGB(255, 230, 116, 232),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              label,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
