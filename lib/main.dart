import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/home/home_controller.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_binding.dart';
import 'package:sleepsounds/src/modules/navbar/navbar_screen.dart';
import 'package:sleepsounds/src/router/app_pages.dart';
import 'package:sleepsounds/src/router/app_routes.dart';

void main() {
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppPages.pages,
          initialRoute: AppRoutes.navbar,
          home: NavbarScreen(),
          initialBinding: NavbarBinding(),
        );
      },
    );
  }
}
