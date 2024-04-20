import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final VoidCallback onPressed;
  const Button1({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.deepOrange,
            Colors.pinkAccent
          ]
        ),
        borderRadius: BorderRadius.circular(30)
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent.withOpacity(0.38), disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
          shadowColor: Colors.transparent,
          //make color or elevated button transparent
        ),
        onPressed: onPressed,
        child: const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                  image: AssetImage('assets/screen3/crown.png'),
                  width: 35,
                  color: Colors.white,
              ),
              Text(
                'Bắt đầu dùng thử miễn phí',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
