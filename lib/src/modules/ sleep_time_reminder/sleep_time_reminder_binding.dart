import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/%20sleep_time_reminder/sleep_time_reminder_controller.dart';


class TimeReminderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimeReminderController>(
          () => TimeReminderController(),
    );
  }
}
