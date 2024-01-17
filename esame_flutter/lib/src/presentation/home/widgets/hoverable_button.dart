import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var isHovered=false;

class HoverableButton extends StatefulWidget {
  const HoverableButton({super.key});

  @override
  State<HoverableButton> createState() => _HoverableButtonState();
}

class _HoverableButtonState extends State<HoverableButton> {
  var isHovered=false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        print('On enter');
        setState(() {
          isHovered=true;
        });
        print(isHovered);
      },
      onExit: (e) {
        print('On exit');
        setState(() {
          isHovered=false;
        });
        print(isHovered);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isHovered ? const Color.fromARGB(255, 230, 116, 232): Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ChatGPT'),
            SizedBox(width: 4),
            Icon(CupertinoIcons.chevron_down, size: 16),
          ],
        ),
      ),
    );
  }
}