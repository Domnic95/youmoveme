import 'package:flutter/material.dart';
import 'package:you_move_me/UI/home/clock_in_out/clock.dart';

class ClockInOut extends StatelessWidget {
  const ClockInOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterStopWatch();
  }
}
