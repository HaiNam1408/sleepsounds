import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/sleep_time_reminder_binding.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/sleep_time_reminder_screen.dart';
import 'package:sleepsounds/src/modules/custom_timer/custom_timer_binding.dart';
import 'package:sleepsounds/src/modules/custom_timer/custom_timer_screen.dart';
import 'package:sleepsounds/src/modules/explore/explore_binding.dart';
import 'package:sleepsounds/src/modules/explore/explore_screen.dart';
import 'package:sleepsounds/src/modules/home/home_binding.dart';
import 'package:sleepsounds/src/modules/home/home_screen.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_binding.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_screen.dart';
import 'package:sleepsounds/src/modules/option_sound/option_sound_binding.dart';
import 'package:sleepsounds/src/modules/option_sound/option_sound_screen.dart';
import 'package:sleepsounds/src/modules/player/player_binding.dart';
import 'package:sleepsounds/src/modules/player/player_screen.dart';
import 'package:sleepsounds/src/modules/setting/setting_binding.dart';
import 'package:sleepsounds/src/modules/setting/setting_screen.dart';
import 'package:sleepsounds/src/modules/timer_option/timer_option_binding.dart';
import 'package:sleepsounds/src/modules/timer_option/timer_option_screen.dart';
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
    ),
    GetPage(
      binding: PlayerBinding(),
      name: AppRoutes.player,
      page: () => const PlayerScreen(),
    ),
    GetPage(
      binding: OptionSoundBinding(),
      name: AppRoutes.optionSound,
      page: () => const OptionSoundScreen(),
    ),
    GetPage(
      binding: TimerOptionBinding(),
      name: AppRoutes.timerOption,
      page: () => const TimerOptionScreen(),
    ),
    GetPage(
      binding: TimerCustomBinding(),
      name: AppRoutes.timerCustom,
      page: () => const TimerCustomScreen(),
    ),
    GetPage(
      binding: TimeReminderBinding(),
      name: AppRoutes.timeReminder,
      page: () => const TimeReminderScreen(),
    ),
  ];
}
