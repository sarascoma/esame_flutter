import 'package:esame_flutter/src/presentation/home/widgets/chat_section.dart';
import 'package:esame_flutter/src/presentation/home/widgets/main_section.dart';
import 'package:esame_flutter/src/presentation/home/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: const Sidebar(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth <= 600;
          return Row(
            children: [
            //SideBar
              Visibility(
                visible: !isMobile,
                child: const SizedBox(
                  width: 300,
                  child: Sidebar(),
                ),
                ),

            //ChatSection
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 130, 150, 223),
                  ),
                  const ChatSection(),
                ],
              ),
            ),
          ],);
        }
      ),
    );
  }
}