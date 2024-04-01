import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/common/themes/app_colors.dart';
import 'package:sleepsounds/src/common/themes/app_size.dart';
import 'package:sleepsounds/src/modules/explore/explore_screen.dart';
import 'package:sleepsounds/src/modules/home/home_screen.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_controller.dart';
import 'package:sleepsounds/src/modules/setting/setting_screen.dart';

class NavbarScreen extends GetView<NavbarController> {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.tabIndex.value,
            children: const [HomeScreen(), ExploreScreen(), SettingScreen()],
          ),
          bottomNavigationBar: SizedBox(
            height: AppSize.bottomBarHeight,
            child: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Âm thanh'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.explore), label: 'Khám phá'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Cài đặt'),
                ],
                backgroundColor: AppColors.primary,
                currentIndex: controller.tabIndex.value,
                selectedItemColor: AppColors.white,
                unselectedItemColor: AppColors.grey.withOpacity(0.7),
                onTap: controller.changeTabIndex),
          ),
        ));
  }
}
