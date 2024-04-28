import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:sizer/sizer.dart';
import 'package:sleepsounds/src/modules/option_sound/component/bottom_buttons.dart';
import 'package:sleepsounds/src/modules/timer_option/component/bottom_buttons.dart';

class TimerPicker extends StatefulWidget {
  const TimerPicker({super.key});

  @override
  State<TimerPicker> createState() => _TimerPickerState();
}

class _TimerPickerState extends State<TimerPicker> {
  TimeOfDay _selectedTime = const TimeOfDay(hour: 0, minute: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Giờ',
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),
            ),
            TimePickerSpinner(
              alignment: Alignment.center,
              isForce2Digits: true,
              is24HourMode: true,
              isShowSeconds: false,
              normalTextStyle: TextStyle(
                color: Colors.white60,
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
              highlightedTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50
              ),
              itemHeight: 80,
              itemWidth: 25.w,
              spacing: 0,
              onTimeChange: (time) {
                setState(() {
                  _selectedTime = time as TimeOfDay;
                });
              },
            ),
            Text(
              'Phút',
              style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),
            ),
          ],
        ),
      ],
    );
  }
}
