import 'package:daily_task/components/abilities.dart';
import 'package:daily_task/components/xp.dart';
import 'package:daily_task/pagesroutes/todopage.dart';
import 'package:daily_task/pagesroutes/workoutpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(
                8.0,
              ), // Adds space between text and border
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.blueAccent, width: 4),
                ),
                borderRadius: BorderRadius.circular(
                  8.0,
                ), // Optional: rounds corners
              ),
              child: const Text(
                'S T A T U S',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "1 0 0 ",
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "LEVEL",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Shadow Monarch ",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "The One Who Overcome Adversity ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Padding(padding: const EdgeInsets.all(8.0), child: XpProgressBar()),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Abilities(name: "💪🏽  STG", level: " 70%"),
                  SizedBox(width: 60),
                  Abilities(name: "🧠  INTE ", level: "80%"),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Abilities(name: "🏆  PROG", level: " 50%"),
                  SizedBox(width: 45),
                  Abilities(name: "💻  SKILL ", level: "75%"),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Workoutpage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Workouts Page"),
                  ),
                  SizedBox(width: 80),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Todopage()),
                      );
                    },
                    child: Text("Task Page"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
