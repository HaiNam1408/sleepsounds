import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/setting/component/button_1.dart';
import 'package:sleepsounds/src/modules/setting/component/list_title.dart';
import 'package:sleepsounds/src/modules/setting/component/text_1.dart';
import 'package:sleepsounds/src/modules/setting/component/version_button.dart';
import 'package:sleepsounds/src/modules/setting/setting_controller.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Cài đặt',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 26
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 70,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,10,20,0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nhận cao cấp',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text1(text: 'Mở khóa tất cả âm thanh'),
                    const SizedBox(height: 10,),
                    const Text1(text: 'Xóa quảng cáo'),
                    const SizedBox(height: 10,),
                    const Text1(text: 'Cập nhật âm thanh liên tục'),
                    const SizedBox(height: 25,),
                    SizedBox(
                      width: 100.h,
                        child: Button1(onPressed: (){})
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'Dùng thử miễn phí 7 ngày, sau đó 233.000 đ/năm. Hủy bất kỳ lúc nào',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20,),
                    ListTile1(
                        text1: 'Nhắc nhở thời gian ngủ',
                        text2: 'Tắt',
                        onTap: (){},
                        image: 'assets/screen3/bedtime.png'
                    ),
                    ListTile1(
                        text1: 'Phản hồi',
                        text2: '',
                        onTap: (){},
                        image: 'assets/screen3/feedback.png'
                    ),
                    ListTile1(
                        text1: 'Chính sách bảo mật',
                        text2: '',
                        onTap: (){},
                        image: 'assets/screen3/eye.png'
                    ),
                    VersionButton(onTap: (){}),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
