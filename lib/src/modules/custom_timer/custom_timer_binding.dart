import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/custom_timer/custom_timer_controller.dart';

class TimerCustomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimerCustomController>(
          () => TimerCustomController(),
    );
  }
}
