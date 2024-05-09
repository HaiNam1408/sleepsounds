import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/app_routes.dart';

class ButtonSound extends StatelessWidget {
  final String text;
  final String image;
  final Function onTap;
  const ButtonSound(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Image.asset(
                image,
                width: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white54),
          )
        ],
      ),
    );
  }
}
