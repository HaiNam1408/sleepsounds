import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({Key? key});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  static const maxSeconds = 20 * 60; // Example for 10 minutes
  int secondsLeft = maxSeconds;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsLeft > 0) {
        setState(() {
          secondsLeft--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
  }

  String formatTime(int seconds) {
    final hours = seconds ~/ 3600; // Tính số giờ
    final minutes = (seconds ~/ 60) % 60; // Tính số phút, loại bỏ số giờ
    final secondsRemaining = seconds % 60;
    if (hours > 0) {
      return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secondsRemaining.toString().padLeft(2, '0')}';
    } else {
      return '${minutes.toString().padLeft(2, '0')}:${secondsRemaining.toString().padLeft(2, '0')}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      formatTime(secondsLeft),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }
}