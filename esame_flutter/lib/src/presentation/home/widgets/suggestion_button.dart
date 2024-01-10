import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionButton extends StatefulWidget {
  const SuggestionButton({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  var isHovered=false;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle=ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: isHovered ? const Color.fromARGB(255, 81, 129, 154):Colors.blueGrey[900],
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 20.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHovered=true;
        });
      },
      onExit: (e) {
        isHovered=false;
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400
          ),
          width: 344,
          height: 70,
          decoration: BoxDecoration(
            gradient: isHovered? LinearGradient(colors: [const Color.fromARGB(255, 90, 168, 203),Colors.blueGrey[800]!])
            :LinearGradient(colors: [const Color.fromARGB(255, 84, 150, 183),Colors.blueGrey[900]!]),
            borderRadius: BorderRadius.circular(30.0),
            ),
          child: ElevatedButton(
            style: ButtonStyle,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 200, 200, 200),
                      ),
                    ),
                  ],
                ),
                ),
                if (isHovered)
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 84, 143, 232),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(CupertinoIcons.arrow_up,
                    color: Colors.white,
                    size: 12,
                    ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}