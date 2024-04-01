import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/setting/setting_controller.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}
