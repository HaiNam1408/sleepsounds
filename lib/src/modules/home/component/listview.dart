import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class ListViewCustom extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final VoidCallback? onTap;
  const ListViewCustom({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: onTap,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(data[index]['image']),
                      fit: BoxFit.cover,
                    )
                  ),

                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 40.w,
                          child: Text(
                              data[index]['name'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          );
        },

    );
  }
}
