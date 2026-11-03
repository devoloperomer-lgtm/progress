import 'package:flutter/material.dart';

class Workoutpage extends StatelessWidget {
  const Workoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Work out page")),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/w.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Text("hello")),
      ),
    );
  }
}
