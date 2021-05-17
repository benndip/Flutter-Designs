import 'package:flutter/material.dart';

class Design7 extends StatefulWidget {
  @override
  _Design7State createState() => _Design7State();
}

class _Design7State extends State<Design7> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              onChanged: (text) {
                setState(() {
                  email = text;
                });
              },
              decoration: InputDecoration(
                hintText: "Input something",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              email,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (text) {
                setState(() {
                  password = text;
                });
              },
              decoration: InputDecoration(
                hintText: "Input something",
              ),
            ),
            Text(
              password,
            ),
          ],
        ),
      ),
    );
  }
}
