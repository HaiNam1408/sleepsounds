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
  const BtnOptionSound({super.key, required this.text, required this.image, required this.onTap, required this.hideBtnClose, required this.onChanged});

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
                    child: Image.asset(widget.image,color: Colors.white, width: 35,)
                ),
                if (widget.hideBtnClose)
                  Positioned(
                      right: 3,
                      top: 3,
                      child: GestureDetector(
                        onTap: widget.onTap,
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
              widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackShape: RectangularSliderTrackShape(),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0), // Hình dạng của thumb (điểm điều chỉnh)
              overlayShape: RoundSliderOverlayShape(overlayRadius: 17.0),
            ),
            child: Slider(
                value: _currentVolume,
                min: 0.0,
                max: 1.0,
                divisions: 100,
                onChanged: (double value){
                  setState(() {
                    _currentVolume = value;
                  });
                  widget.onChanged(value);
                }
            ),
          )
        ],
      ),
    );
  }
}
