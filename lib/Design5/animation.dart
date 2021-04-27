import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class AnimationContainer extends StatefulWidget {
  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 35,
      initialDuration: 0,
      controller: CountDownController(),
      width: 50,
      height: 50,
      ringColor: Colors.grey[300],
      ringGradient: null,
      fillColor: Colors.amber,
      fillGradient: null,
      backgroundColor: Colors.transparent,
      backgroundGradient: null,
      strokeWidth: 10.0,
      strokeCap: StrokeCap.round,
      textStyle: TextStyle(
          fontSize: 13.0, color: Colors.white, fontWeight: FontWeight.bold),
      textFormat: CountdownTextFormat.S,
      isReverse: false,
      isReverseAnimation: false,
      isTimerTextShown: false,
      autoStart: true,
      onStart: () {
        print('Countdown Started');
      },
      onComplete: () {
        print('Countdown Ended');
      },
    );
  }
}
