import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './Design1/login.dart';
import './Design1/camera.dart';
import './Design2/design2.dart';
import './Design3/design3.dart';
import './Design4/design4.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/home': (context) => Login(),
        Camera.routeName: (context) => Camera(),
      },
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Login(),
      ),
    );
  }
}
