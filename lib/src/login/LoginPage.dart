import 'package:flutter/material.dart';
import 'package:flutter_learning/src/api/ApiHelper.dart';
import 'package:logger/logger.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              onClick();
            },
            child: Text(
              'Welcome',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}

void onClick() {
  print("Button clicked");
  Future<String> future = Future(() => callApi());
  var logger = Logger();
  future.then((value) => logger.e(value));
}
