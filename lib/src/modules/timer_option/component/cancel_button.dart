import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Container(
            width: 50, // Adjust the size of the circle as needed
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.2),
            ),
            child: const Center(
                child: Image(
                  image: AssetImage('assets/player_screen/cancel.png'),
                  width: 15,
                  height: 15,
                  color: Colors.white,
                )
            ),
          ),
          const Text(
            'Hủy',
            style: TextStyle(
                color: Colors.white38
            ),
          )
        ],
      ),
    );
  }
}
