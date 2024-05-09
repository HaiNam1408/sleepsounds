import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../router/app_routes.dart';
import '../../explore_sound/explore_sound_screen.dart';


class ListTitleCustom extends StatelessWidget {
  const ListTitleCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        GestureDetector(
          onTap: (){
            Get.to(const ExploreSoundScreen('Ngủ'));
          },
          child: const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image(
                image: AssetImage('assets/screen2/night.png'),
                width: 40,
              ),
            ),
            title: Text(
              'Ngủ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ngủ ngon hơn',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Divider(height: 0,color: Colors.white24),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Get.to(const ExploreSoundScreen('Thư giản'));
          },
          child: const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image(
                image: AssetImage('assets/screen2/coffee.png'),
                width: 40,
              ),
            ),
            title: Text(
              'Thư giãn',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Giảm căng thẳng',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Divider(height: 0,color: Colors.white24,),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Get.to(const ExploreSoundScreen('Làm việc'));
          },
          child: const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image(
                image: AssetImage('assets/screen2/computer.png'),
                width: 40,
              ),
            ),
            title: Text(
              'Làm việc',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Giữ tập trung',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
                Divider(height: 0,color: Colors.white24),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Get.to(const ExploreSoundScreen('Thiền'));
          },
          child: const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image(
                image: AssetImage('assets/screen2/yoga.png'),
                width: 40,
              ),
            ),
            title: Text(
              'Thiền',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Học cách thiền',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
