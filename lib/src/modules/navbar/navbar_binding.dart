import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_controller.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarController>(
      () => NavbarController(),
    );
  }
}
