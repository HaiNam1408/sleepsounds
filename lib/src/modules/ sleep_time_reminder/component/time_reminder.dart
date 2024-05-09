import 'package:flutter/material.dart';

class TimeReminderButton extends StatelessWidget {
  final VoidCallback? onTap;
  const TimeReminderButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  'Nhắc nhở thời gian',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 10,),
          Text(
            '21:00',
            style: TextStyle(
              color: Colors.white60,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
