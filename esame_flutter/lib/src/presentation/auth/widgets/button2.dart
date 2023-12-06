import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container (
                            width:200,
                            height: 48,
                            decoration: BoxDecoration(color: Color.fromARGB(255, 1, 1, 255), borderRadius: BorderRadius.circular(16),),
                            child: Center(
                              child: Text ('Subscribe Premium',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,
                              ),),
                            ),
                          );
  }
}