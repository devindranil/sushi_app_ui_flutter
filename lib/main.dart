//import main packages of our application
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import the splash screen file package
import 'package:flutter_sushi_app/splash_screen.dart';

//this is the root of our application
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //a separate file was created for the splash screen
      home: splashScreen(),
    );
  }
}
