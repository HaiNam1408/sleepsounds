import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/option_sound/option_sound_controller.dart';



class OptionSoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OptionSoundController>(
          () => OptionSoundController(),
    );
  }
}
