import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/explore/explore_controller.dart';

class ExploreScreen extends GetView<ExploreController> {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Explore Screen')),
    );
  }
}
