import 'package:daily_task/taskframe/pop.dart';
import 'package:daily_task/taskframe/tasksketch.dart';
import 'package:flutter/material.dart';

class Todopage extends StatefulWidget {
  const Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  void dailog() {
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Pop();
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: dailog,
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/productive.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Tasksketch();
          },
        ),
      ),
    );
  }
}
