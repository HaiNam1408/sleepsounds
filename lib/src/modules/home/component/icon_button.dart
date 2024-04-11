import 'package:flutter/material.dart';

class IconButton1 extends StatelessWidget {
  final Color buttonColor;
  final VoidCallback? onTap;
  final String buttonText;
  final String assetImage;

  const IconButton1({super.key, required this.buttonColor, required this.buttonText, required this.assetImage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: buttonColor.withOpacity(.5),
            child: Image(
              image: AssetImage(assetImage),
              width: 30,
            ),
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
        )
      ],
    );
  }
}
