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
                color: Colors.yellow,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('Logo',
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.orange,
                    ),
                    ),
                    Text('Titolo tsjpilljsjk fuhskhmfkvk h fnkshkshkn ksj kz nkjndhka kcns',style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Colors.orange,
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
                      Text('jfhbhf',style: TextStyle(fontSize: 28,),
                      ),
                      SizedBox(height: 20,),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Container (
                            
                            width: 200,
                            height: 48,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),border: Border.all(color: Colors.amber)
                            ),
                            child: Center(
                              child: Text ('AAAAA',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.amber,
                              ),
                            ),
                          ),
                          ),
                          SizedBox(),
                          Container (
                            width:200,
                            height: 48,
                            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(16),),
                            child: Center(
                              child: Text ('BBBBB',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('jfhbhf''hfdhfb',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                      SizedBox(height: 8,),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          // ignore: avoid_unnecessary_containers
                          Container (
                            child: Center(
                              child: Text ('hfdhfb',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                            ),
                          ),
                          Text(' I ',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                          // ignore: avoid_unnecessary_containers
                          Container (
                            child: Center(
                              child: Text ('hfdhfb''hfdhfb',style: TextStyle(fontSize: 12,color: Colors.grey,),),
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