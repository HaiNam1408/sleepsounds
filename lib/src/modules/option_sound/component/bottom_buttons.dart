import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
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
                'Cancel',
                style: TextStyle(
                    color: Colors.white38
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            GestureDetector(
              onTap: (){},
              child: Column(
                children: [
                  Container(
                    width: 80, // Adjust the size of the circle as needed
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.purpleAccent,
                            Colors.deepPurpleAccent,
                          ]
                      )
                    ),
                    child: const Icon(
                      Icons.check_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
        GestureDetector(
          onTap: (){},
          child: Column(
            children: [
              Container(
                width: 50, // Adjust the size of the circle as needed
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Center(
                    child: Transform(
                        transform: Matrix4.identity()..scale(-1.0, 1.0),
                        alignment: Alignment.center,
                        child: const Icon(Icons.refresh,color: Colors.white,)
                    ),
                ),
              ),
              const Text(
                'Reset',
                style: TextStyle(
                    color: Colors.white38
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
