import 'package:flutter/material.dart';


class GridViewCustom extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final VoidCallback? onTap;
  final bool hideBtnClose;
  const GridViewCustom({super.key, required this.data, this.onTap,required this.hideBtnClose});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: 120,
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.purpleAccent,
                            Colors.deepPurpleAccent,
                          ]
                      )
                  ),
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset(data[index]['icon'],color: Colors.white, width: 35,)
                      ),
                      if (hideBtnClose)
                        Positioned(
                            right: 3,
                            top: 3,
                            child: GestureDetector(
                              onTap: onTap,
                              child: Icon(
                                Icons.close,
                                color: Colors.white60,
                              ),
                            )
                        )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  data[index]['name'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          )
        );
      },
    );
  }
}
