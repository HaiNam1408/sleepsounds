import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: [
          Container(
            width: 40.w,
            height: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
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
              Icons.add_circle_rounded,
              color: Colors.white,
              size: 65,
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            'Thêm mới',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
