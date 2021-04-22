import 'dart:ui';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/sea.jpg',
                ),
                Positioned(
                  bottom: 70,
                  left: 23,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.favorite_outlined,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enjoy the world',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'with me!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: 30,
                left: 23,
                right: 23,
              ),
              transform: Matrix4.translationValues(0.0, -45.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                  fontSize: 20),
                            ),
                            Text(
                              'Account',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: _image == null
                              ? null
                              : Image.file(_image),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.orange,
                                ),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  // Navigator.of(context)
                                  //     .pushNamed(Camera.routeName);
                                  getImage();
                                },
                                icon: Icon(Icons.camera),
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'upload picture',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Email',
                          style: TextStyle(color: Colors.black54),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '...@example.com',
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(color: Colors.black54),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            focusColor: Colors.orange,
                            hintText: '***************',
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.only(top: 60),
                          child: ElevatedButton(
                            onPressed: () async {
                              print('$email and $password');
                            },
                            child: Text("Login"),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.orange,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account??'),
                              FlatButton(
                                  child: Text('Register'), onPressed: () {})
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
