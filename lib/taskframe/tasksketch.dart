import 'package:flutter/material.dart';

class Tasksketch extends StatelessWidget {
  const Tasksketch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(18),
        ),

        child: Row(
          children: [
            SizedBox(width: 10),
            Checkbox(value: true, onChanged: (bool? newValue) {}),
            SizedBox(width: 10),
            Text(
              "hello",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
