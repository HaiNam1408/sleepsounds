import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/explore/explore_binding.dart';
import 'package:sleepsounds/src/modules/explore/explore_screen.dart';
import 'package:sleepsounds/src/modules/home/home_binding.dart';
import 'package:sleepsounds/src/modules/home/home_screen.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_binding.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_screen.dart';
import 'package:sleepsounds/src/modules/setting/setting_binding.dart';
import 'package:sleepsounds/src/modules/setting/setting_screen.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

class AppPages {
  AppPages._();

  static List<GetPage> pages = <GetPage>[
    GetPage(
      binding: NavbarBinding(),
      name: AppRoutes.navbar,
      page: () => const NavbarScreen(),
    ),
    GetPage(
      binding: HomeBinding(),
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      binding: SettingBinding(),
      name: AppRoutes.setting,
      page: () => const SettingScreen(),
    ),
    GetPage(
      binding: ExploreBinding(),
      name: AppRoutes.explore,
      page: () => const ExploreScreen(),
    )
  ];
}