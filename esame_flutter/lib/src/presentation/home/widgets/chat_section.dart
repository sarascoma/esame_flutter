import 'package:esame_flutter/src/presentation/home/widgets/hoverable_button.dart';
import 'package:esame_flutter/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {
        'type':'user',
        'message':'ciao',
      },
      {
        'type':'assistant',
        'message':'ciao, a te',
      },
      ];
      return Expanded(
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: MediaQuery.of(context).size.width *
            0.6, //70% of the parent section
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: const Color.fromARGB(255, 64, 68, 80),
                  ),
                  ),
                  Column(
                    children: [
                      if (MediaQuery.sizeOf(context).width <=600)
                      GestureDetector(
                        onTap: () {
                          if (!Scaffold.of(context).isDrawerOpen) {
                            Scaffold.of(context).openDrawer();
                          }
                        },
                        child: const Icon(Icons.menu)),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [HoverableButton()]),
                                Row(
                                  children: [
                                    Column(
                                      children: messages.map((e) => e['type']=='user'
                                      ?MessageAiWidget(
                                        label: e['message']as String)
                                        : MessageAiWidget(
                                          label: e['message']as String))
                                          .toList(),
                                      ),
                                    ],
                                  ),
                                  Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Message ChatGPT...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  CupertinoIcons.arrow_up_square_fill,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  alignment: Alignment.center,
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: const Text(
                    '?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}