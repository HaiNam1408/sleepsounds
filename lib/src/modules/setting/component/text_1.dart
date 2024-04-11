import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final String text;
  const Text1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.check_outlined,
          color: Colors.deepOrange,
          size: 30,
        ),
        SizedBox(width: 10,),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
