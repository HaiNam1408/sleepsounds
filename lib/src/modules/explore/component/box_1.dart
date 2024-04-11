import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Box1 extends StatelessWidget {
  const Box1({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            width: 100.w,
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage("assets/screen2/baby_sleeping.jpg"),
                fit: BoxFit.cover,
                opacity: 0.8,
              ),
            ),
          ),
          const Positioned(
              left: 20,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hộp nhạc ru lắng',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Bạn muốn ngủ ngon hơn ?',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
