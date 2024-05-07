import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const SwitchButton({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      trackOutlineColor: MaterialStateColor.transparent,
      inactiveTrackColor: Colors.white60,
      inactiveThumbColor: Colors.white,
      activeTrackColor: Colors.purple,
      activeColor: Colors.purpleAccent,
      splashRadius: 50,
      value: value,
      onChanged: onChanged,
    );
  }
}
