import 'package:flutter/material.dart';

class ButtonOption extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ButtonOption({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          side: BorderSide(
            width: 2,
            color: Colors.white30
          )
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        )
    );
  }
}
