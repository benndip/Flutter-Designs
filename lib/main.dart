import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var physicalWidth = window.physicalSize.width;

    return MaterialApp(
      title: "Philips Heu",
      home: Scaffold(
        appBar: AppBar(title: const Text('Philips Heu')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 2,
                      primary: const Color(0xFFFF9000),
                      minimumSize: Size(physicalWidth * 0.2, 42)),
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Already have an account ?'),
                  ElevatedButton(onPressed: () {}, child: Text('Login'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
