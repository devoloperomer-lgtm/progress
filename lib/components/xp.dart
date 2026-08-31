import 'package:flutter/material.dart';

class XpProgressBar extends StatelessWidget {
  const XpProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          //Xp text
          Text(
            "XP",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1.2,
            ),
          ),

          SizedBox(width: 16),

          //main part of bar
          Expanded(
            child: ClipRRect(
              // borderRadius: BorderRadiusGeometry.circular(12),
              borderRadius: BorderRadius.circular(12),

              child: SizedBox(
                height: 10,
                child: LinearProgressIndicator(
                  value: 0.35,
                  backgroundColor: Colors.black12,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          //last icon for note
          Icon(Icons.emoji_events_outlined, color: Colors.tealAccent, size: 18),
        ],
      ),
    );
  }
}
