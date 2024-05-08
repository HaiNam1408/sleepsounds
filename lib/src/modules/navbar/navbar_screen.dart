import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/common/themes/app_colors.dart';
import 'package:sleepsounds/src/common/themes/app_size.dart';
import 'package:sleepsounds/src/modules/explore/explore_screen.dart';
import 'package:sleepsounds/src/modules/home/home_screen.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_controller.dart';
import 'package:sleepsounds/src/modules/player/component/timer.dart';
import 'package:sleepsounds/src/modules/player/player_controller.dart';
import 'package:sleepsounds/src/modules/player/player_screen.dart';
import 'package:sleepsounds/src/modules/setting/setting_screen.dart';

class NavbarScreen extends StatelessWidget {
  NavbarScreen({super.key});
  final ValueNotifier<double> playerExpandProgress = ValueNotifier(80);
  PlayerController playerCtrl = Get.put(PlayerController());
  NavbarController controller = Get.put(NavbarController());
  static double minHeight = 64;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Stack(
            children: const [
              HomeScreen(),
              ExploreScreen(),
              SettingScreen(),
            ]
                .asMap()
                .map((i, screen) => MapEntry(
                    i,
                    Offstage(
                      offstage: controller.tabIndex.value != i,
                      child: screen,
                    )))
                .values
                .toList()
              ..add(Offstage(
                offstage: playerCtrl.name.value == '',
                child: Miniplayer(
                  minHeight: minHeight,
                  maxHeight: 100.h,
                  valueNotifier: playerExpandProgress,
                  builder: (height, percentage) {
                    if (playerCtrl.name.value == '') {
                      return const SizedBox.shrink();
                    }
                    if (height < minHeight + 80) {
                      return Container(
                        color: AppColors.primary,
                        padding: const EdgeInsets.all(4),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                      image:
                                          NetworkImage(playerCtrl.image.value),
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.cover),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        playerCtrl.name.value,
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 16),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time_outlined,
                                            color: AppColors.white,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 8),
                                          const CountdownTimer(fonsize: 12)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(children: [
                                IconButton(
                                    onPressed: () {
                                      playerCtrl.resumeSound();
                                    },
                                    icon: Obx(() => Icon(
                                          playerCtrl.isPlaying.value
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                          color: AppColors.white,
                                        ))),
                                IconButton(
                                    onPressed: () {
                                      playerCtrl.resetPlayer();
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: AppColors.white,
                                    ))
                              ])
                            ]),
                      );
                    } else {
                      return const PlayerScreen();
                    }
                  },
                ),
              )),
          )),
      bottomNavigationBar: ValueListenableBuilder<double>(
        valueListenable: playerExpandProgress,
        builder: (context, value, child) {
          bool shouldHideBottomBar = value > 160;

          return AnimatedContainer(
            height: shouldHideBottomBar ? 0 : AppSize.bottomBarHeight,
            duration: const Duration(milliseconds: 400),
            child: Wrap(
              children: [
                SizedBox(
                  height: AppSize.bottomBarHeight,
                  child: BottomNavigationBar(
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Âm thanh',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.explore),
                        label: 'Khám phá',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.settings),
                        label: 'Cài đặt',
                      ),
                    ],
                    backgroundColor: AppColors.primary,
                    currentIndex: controller.tabIndex.value,
                    selectedItemColor: AppColors.white,
                    unselectedItemColor: AppColors.grey.withOpacity(0.7),
                    onTap: controller.changeTabIndex,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
