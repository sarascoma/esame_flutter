// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
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
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: 480,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  Column(
                    children: [
                      Text('Join Us!',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20,),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Container (
                            
                            width: 200,
                            height: 48,
                            decoration: BoxDecoration(color: Color.fromARGB(255, 1, 1, 255), borderRadius: BorderRadius.circular(16),),
                            child: Center(
                              child: Text ('Get started for FREE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          ),
                          SizedBox(),
                          Container (
                            width:200,
                            height: 48,
                            decoration: BoxDecoration(color: Color.fromARGB(255, 1, 1, 255), borderRadius: BorderRadius.circular(16),),
                            child: Center(
                              child: Text ('Subscribe Premium',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('OpenAI',style: TextStyle(fontSize: 20,color: Colors.grey,),),
                      SizedBox(height: 8,),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          // ignore: avoid_unnecessary_containers
                          Container (
                            child: Center(
                              child: Text ('Terms of use',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                            ),
                          ),
                          Text(' I ',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                          // ignore: avoid_unnecessary_containers
                          Container (
                            child: Center(
                              child: Text ('Policy',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                            ),
                          ),
                        ],
                      ),
                    SizedBox(height: 8,),
                    ],
                  ),
                ],
              ),
             ),
            ))
        ],
      ),
    );
  }
}