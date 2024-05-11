import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/common/themes/app_colors.dart';
import 'package:sleepsounds/src/modules/home/home_controller.dart';
import 'package:sleepsounds/src/modules/player/component/timer.dart';

class miniPlayerCustom extends StatelessWidget {
  final bool visible;
  const miniPlayerCustom({super.key, required this.visible});

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visible,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          color: AppColors.primary.withOpacity(0.8),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name Sound',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CountdownTimer(
                              fonsize: 20,
                              // initialSecondsLeft: 20*60,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                GetBuilder<HomeController>(builder: (controller) {
                  return Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.updatePlaying();
                        },
                        icon: Icon(
                          controller.isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.toggleMiniPlayer(false);
                        },
                        child: const SizedBox(
                          width: 15,
                          height: 15,
                          child: Image(
                            image:
                                AssetImage("assets/player_screen/cancel.png"),
                            fit: BoxFit.cover,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ));
  }
}
