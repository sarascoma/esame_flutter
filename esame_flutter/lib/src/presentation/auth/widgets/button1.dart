import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container (
                            
                            width: 200,
                            height: 48,
                            decoration: BoxDecoration(color: Color.fromARGB(255, 1, 1, 255), borderRadius: BorderRadius.circular(16),),
                            child: Center(
                              child: Text (label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          );
  }
}