import 'package:flutter/material.dart';

class VersionButton extends StatelessWidget {
  final VoidCallback onTap;
  const VersionButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Divider(height: 0, color: Colors.white24,),
          SizedBox(height: 15,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'Version 1.0.1.11C',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
