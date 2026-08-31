import 'package:flutter/material.dart';

class Abilities extends StatelessWidget {
  final String name;
  final String level;
  const Abilities({super.key, required this.name, required this.level});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: const Color.fromARGB(255, 216, 187, 187),
          ),
        ),
        Text(
          level,
          style: TextStyle(
            color: const Color.fromARGB(179, 121, 238, 130),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
