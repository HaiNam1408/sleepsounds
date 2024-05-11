import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleepsounds/src/modules/option_sound/option_sound_controller.dart';

class GridViewCustom extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  final VoidCallback? onTap;
  final bool hideBtnClose;
  const GridViewCustom(
      {super.key, required this.data, this.onTap, required this.hideBtnClose});

  @override
  State<GridViewCustom> createState() => _GridViewCustomState();
}

class _GridViewCustomState extends State<GridViewCustom> {
  OptionSoundController controller = Get.put(OptionSoundController());
  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        bool isSelect = controller.list.contains(widget.data[index]['sound']);
        return GestureDetector(
            onTap: () {
              setState(() {
                isChange = !isChange;
              });
              controller.changeListSound(widget.data[index]['sound']);
            },
            child: SizedBox(
              width: 120,
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: isSelect
                                ? [
                                    Colors.grey.withOpacity(.8),
                                    Colors.grey.withOpacity(.8)
                                  ]
                                : [
                                    Colors.purpleAccent,
                                    Colors.deepPurpleAccent,
                                  ])),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              widget.data[index]['icon'],
                              color: Colors.white,
                              width: 28,
                            )),
                        if (widget.hideBtnClose)
                          Positioned(
                              right: 2,
                              top: 2,
                              child: GestureDetector(
                                onTap: widget.onTap,
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white60,
                                ),
                              ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.data[index]['name'],
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
