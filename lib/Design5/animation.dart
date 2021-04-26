import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  @override
  _AnimationContainerState createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 15,
          color: Colors.amber,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.access_time_rounded,
          size: 20,
        ),
      ),
    );
  }
}
