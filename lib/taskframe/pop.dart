import 'package:flutter/material.dart';

class Pop extends StatelessWidget {
  const Pop({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.bottomCenter,
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      contentPadding: EdgeInsets.zero,
      elevation: 0,

      content: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your Task....",
                ),
              ),
            ),
            SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add "),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            // ElevatedButton(onPressed: () {}, child: Text("cancel ")),
          ],
        ),
      ),
    );
  }
}
