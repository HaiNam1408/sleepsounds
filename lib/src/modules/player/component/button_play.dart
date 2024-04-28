import 'package:flutter/material.dart';

class ButtonPlay extends StatefulWidget {
  const ButtonPlay({super.key});

  @override
  _ButtonPlayState createState() => _ButtonPlayState();
}

class _ButtonPlayState extends State<ButtonPlay> {
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white24,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
        ),
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow, // Toggle between play and pause icons
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
