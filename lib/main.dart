import 'package:flutter/material.dart';
import 'package:flutter_learning/src/home/LoginPage.dart';
import 'package:flutter_learning/src/utils/Constants.dart';
import 'package:flutter_learning/src/splash/Splash.dart';
import 'package:flutter_learning/src/ui/MovieList.dart';

void main() {
  print("count is : $count");
  runApp(MyApp());
  // runApp(MovieList());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieList(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: SizedBox(
                width: 200,
                height: 150,
                child: Image.asset('assets/images/flutter-logo.png'),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Enter Email Id"),
                )),
            SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter Password"
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  print("Button clicked");
                }, child: Text(
                  "Forgot password",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),

                ElevatedButton(
                  onPressed: (){
                    print("Login Clicked");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: OutlinedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginPage()));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
