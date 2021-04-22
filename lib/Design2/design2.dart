import 'package:Designs/Design2/User.dart';
import 'package:Designs/Design2/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Design2 extends StatefulWidget {
  @override
  _Design2State createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  bool _loading = false;
  List<User> _users;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(
              left: 20,
              top: 20,
              right: 20,
            ),
            height: deviceHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find your',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'matches courses',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '10 Courses available',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      //child: Image.network(''),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height: 400,
                    child: !_loading ? ListView.builder(
                        itemCount: _users.length,
                        itemBuilder: (context, index) {
                          User user = _users[index];
                          return ListTile(
                            title: Text(user.name),
                            subtitle: Text(user.email),
                          );
                        }):Text('Loading...'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
