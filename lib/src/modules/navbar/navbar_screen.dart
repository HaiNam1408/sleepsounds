import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/common/themes/app_colors.dart';
import 'package:sleepsounds/src/common/themes/app_size.dart';
import 'package:sleepsounds/src/modules/explore/explore_screen.dart';
import 'package:sleepsounds/src/modules/home/home_screen.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_controller.dart';
import 'package:sleepsounds/src/modules/setting/setting_screen.dart';

class NavbarScreen extends GetView<NavbarController> {
  NavbarScreen({super.key});
  final ValueNotifier<double> playerExpandProgress = ValueNotifier(80);

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
                offstage: false,
                child: Miniplayer(
                  minHeight: 80,
                  maxHeight: 100.h,
                  valueNotifier: playerExpandProgress,
                  builder: (height, percentage) {
                    return Container(
                      color: Colors.black,
                      child: Center(child: Text('$height, $percentage')),
                    );
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
