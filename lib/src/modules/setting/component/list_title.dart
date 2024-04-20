import 'package:flutter/material.dart';

class ListTile1 extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onTap;
  final String image;
  const ListTile1({super.key, required this.text1, required this.text2, required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Divider(height: 0, color: Colors.white24,),
          SizedBox(height: 15,),
          ListTile(
            leading: Image(
              image: AssetImage(image),
              width: 30,
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
