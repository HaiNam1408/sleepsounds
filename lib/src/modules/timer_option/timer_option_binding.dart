import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/timer_option/timer_option_controller.dart';

class TimerOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimerOptionController>(
          () => TimerOptionController(),
    );
  }
}
