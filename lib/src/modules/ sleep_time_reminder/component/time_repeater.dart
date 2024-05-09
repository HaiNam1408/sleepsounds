import 'package:flutter/material.dart';

class TimeRepeater extends StatelessWidget {
  final VoidCallback? onTap;
  final bool isActive;
  final String text;
  const TimeRepeater({super.key, this.onTap, required this.text, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isActive? [
                      Colors.purpleAccent,
                      Colors.deepPurpleAccent,
                    ]: [Colors.black26, Colors.black26]
                )
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
  }
}
