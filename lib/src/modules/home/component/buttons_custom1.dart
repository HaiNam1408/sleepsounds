import 'package:flutter/material.dart';

import 'icon_button.dart';

class ButtonsCustom1 extends StatelessWidget {
  const ButtonsCustom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton1(
            buttonColor: Colors.purple,
            onTap: (){},
            buttonText: 'Ngủ',
            assetImage: 'assets/screen1/night.png'
        ),
        IconButton1(
            buttonColor: Colors.deepPurple,
            onTap: (){},
            buttonText: 'Thư giãn',
            assetImage: 'assets/screen1/coffee.png'
        ),
        IconButton1(
            buttonColor: Colors.orange.shade300,
            onTap: (){},
            buttonText: 'Làm việc',
            assetImage: 'assets/screen1/monitor.png'
        ),
        IconButton1(
            buttonColor: Colors.pinkAccent,
            onTap: (){},
            buttonText: 'Thiền',
            assetImage: 'assets/screen1/yoga.png'
        ),
      ],
    );
  }
}
