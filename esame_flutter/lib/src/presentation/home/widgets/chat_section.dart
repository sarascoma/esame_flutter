import 'package:esame_flutter/src/data/models/message.dart';
import 'package:esame_flutter/src/presentation/home/blocs/chat_cubit.dart';
import 'package:esame_flutter/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:esame_flutter/src/presentation/home/widgets/messages/message_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit()..loadMessages(),
      child: const _ChatSection(),
    );
  }
}

class _ChatSection extends StatefulWidget {
  const _ChatSection({Key? key}) : super(key: key);

  @override
  _ChatSectionState createState() => _ChatSectionState();
}

class _ChatSectionState extends State<_ChatSection> {
  TextEditingController sendMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ChatError) {
          return const Center(child: Text('error'));
        }
        if (state is ChatLoaded) {
        return Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  for (final message in state.messages)
                    message is MessageAi
                        ? MessageAiWidget(label: message.content)
                        : MessageUserWidget(label: message.content),
                        Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 520.0), // Aggiungi o modifica i margini
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                style: const TextStyle(color: Color.fromARGB(255, 230, 116, 232)),
                                controller: sendMessage,
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(color: Color.fromARGB(255, 230, 116, 232),fontWeight: FontWeight.bold),
                                  hintText: 'Message ChatGPT...',
                                  border: InputBorder.none,
                                ),
                                onSubmitted: (value) {
                                  String message = sendMessage.text;
                                  if (message != '') {
                                    context.read<ChatCubit>().insert(message);
                                    sendMessage.clear();
                                  }
                                },
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              String message = sendMessage.text;
                              if (message != '') {
                                context.read<ChatCubit>().insert(message);
                                sendMessage.clear();
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8.0), // Regola il padding della freccia
                              child: const Icon(Icons.arrow_upward),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ],
                ),
              ),
            ],
          );
        }
      return const SizedBox.shrink();
    });
  }

  /* final messages = [
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
            width: MediaQuery.of(context).size.width, 
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: const Color.fromARGB(255, 116, 172, 235),
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(16),
                                                            border: Border.all(
                                                              color: const Color.fromARGB(255, 218, 218, 218),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          child: const Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.only(left: 8.0),
                                                                child: Text(
                                    'Message ChatGPT',
                                    style: TextStyle(color: Color.fromARGB(255, 218, 218, 218)),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.all(8.0),
                                                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: Color.fromARGB(255, 218, 218, 218),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
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
                      color: const Color.fromARGB(255, 218, 218, 218)),
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
} */
}
