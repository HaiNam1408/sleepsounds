import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/explore/component/box_1.dart';
import 'package:sleepsounds/src/modules/explore/component/list_view.dart';
import 'package:sleepsounds/src/modules/explore/explore_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/explore/component/list_title.dart';

import 'component/add_button.dart';

class ExploreScreen extends GetView<ExploreController> {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,30,15,0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lựa chọn của người biên tập',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Box1(),
                        const SizedBox(height: 40,),
                        const Text(
                          'Khám phá âm thanh',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 350,
                          width: 100.w,
                            child: const ListTitleCustom()
                        ),
                        const SizedBox(height: 20,),
                        const Text(
                          'Âm thanh hàng đầu',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 100.w,
                    child: const ListViewCustom(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,30,15,100),
                    child: SizedBox(
                      width: 100.w,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Âm thanh của tôi',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20,),
                          AddButton(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
