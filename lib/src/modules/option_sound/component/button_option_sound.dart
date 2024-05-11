import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class BtnOptionSound extends StatefulWidget {
  final String text;
  final String image;
  final VoidCallback onTap;
  final bool hideBtnClose;
  final ValueChanged<double> onChanged;
  const BtnOptionSound(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap,
      required this.hideBtnClose,
      required this.onChanged});

  @override
  State<BtnOptionSound> createState() => _BtnOptionSoundState();
}

class _BtnOptionSoundState extends State<BtnOptionSound> {
  double _currentVolume = 0.5;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.purpleAccent,
                      Colors.deepPurpleAccent,
                    ])),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      widget.image,
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
                          size: 20,
                        ),
                      ))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.text,
            style: const TextStyle(color: Colors.white),
          ),
          SliderTheme(
            data: const SliderThemeData(
              trackShape: RectangularSliderTrackShape(),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 17.0),
            ),
            child: Slider(
                value: _currentVolume,
                min: 0.0,
                max: 1.0,
                divisions: 100,
                onChanged: (double value) {
                  setState(() {
                    _currentVolume = value;
                  });
                  widget.onChanged(value);
                }),
          )
        ],
      ),
    );
  }
}
