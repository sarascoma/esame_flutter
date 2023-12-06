import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 243, 136),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('ChatGPT',
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.orange,
                    ),
                    ),
                    Text('AI service that helps you in everything',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold,color: Colors.orange,
                    ),
                    ),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          );
  }
}