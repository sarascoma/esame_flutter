import 'package:esame_flutter/src/presentation/auth/widgets/button1.dart';
import 'package:esame_flutter/src/presentation/auth/widgets/button2.dart';
import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                          Button(label: 'Get started FREE'),
                          SizedBox(),
                          Button2(),
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
            ));
  }
}