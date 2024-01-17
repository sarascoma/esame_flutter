import 'package:esame_flutter/src/presentation/home/widgets/hoverable_button.dart';
import 'package:esame_flutter/src/presentation/home/widgets/suggestion_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
          children: [
            Column(
      children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const HoverableButton(),
                    ),

        if (MediaQuery.sizeOf(context).width <=600)
        GestureDetector(
          onTap: () {
            if (!Scaffold.of(context).isDrawerOpen){
              Scaffold.of(context).openDrawer();
            }
          },
          child: const Icon(Icons.menu)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: const Color(0xfff1f1f1))
                      ),
                      child: Center(child: Image.asset('assets/ChatGPT-Logo.png',
                      width: 56,
                      height: 56,
                      ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('How can i help you today?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nimbus',
                    ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(26.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SuggestionButton(title: 'Testo1', description: 'Testo2'),
                          SuggestionButton(title: 'Testo', description: 'Testo2'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SuggestionButton(title: 'Testo2', description: 'Testo2'),
                          SuggestionButton(title: 'Testo2', description: 'Testo2'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
            
      ],
    ),
    Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 28,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 53, 96),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: const Color.fromARGB(255, 230, 116, 232)
                  ),
                ),
                  child: const Center(child: Text("?",
                  style: TextStyle(color: Color.fromARGB(255, 230, 116, 232),fontSize: 12),
                  ),
                  ),
              ),
            ),
          ],
        ));
  }
}