import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Home Screen')),
    );
  }
}
