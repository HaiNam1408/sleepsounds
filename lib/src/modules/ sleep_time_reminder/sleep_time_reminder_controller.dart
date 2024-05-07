import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TimeReminderController extends GetxController {
  // Rx Variable để theo dõi trạng thái của switch
  var isSwitchOn = false.obs;
  var isActive1 = false.obs;
  var isActive2 = false.obs;
  var isActive3 = false.obs;
  var isActive4 = false.obs;
  var isActive5 = false.obs;
  var isActive6 = false.obs;
  var isActive7 = false.obs;
  // Phương thức để cập nhật trạng thái của switch
  void updateSwitch(bool value) {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    if (isSwitchOn.value != value) {
      isSwitchOn.value = value;
    }
  }
  void updateActive1() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive1.value =! isActive1.value;
    print(isActive1.value);
  }
  void updateActive2() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive2.value =! isActive2.value;
    print(isActive2.value);
  }
  void updateActive3() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive3.value =! isActive3.value;
    print(isActive3.value);
  }
  void updateActive4() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive4.value =! isActive4.value;
    print(isActive4.value);
  }
  void updateActive5() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive5.value =! isActive5.value;
    print(isActive5.value);
  }
  void updateActive6() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive6.value =! isActive6.value;
    print(isActive6.value);
  }
  void updateActive7() {
    // Chỉ cập nhật giá trị nếu giá trị mới khác với giá trị hiện tại
    isActive7.value =! isActive7.value;
    print(isActive1.value);
  }
}
