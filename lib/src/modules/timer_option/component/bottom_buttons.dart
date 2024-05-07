import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';

class BottomButton extends StatelessWidget {
  BottomButton({super.key});
  final PlayerController controller = Get.put(PlayerController());

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
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
                )),
              ),
              const Text(
                'Cancel',
                style: TextStyle(color: Colors.white38),
              )
            ],
          ),
        ),
        SizedBox(
          width: 50.w,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  controller.customSecondsLeft();
                },
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
                                ])),
                        child: const Icon(
                          Icons.check_outlined,
                          size: 40,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
