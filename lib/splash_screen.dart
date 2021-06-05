//import main packages of our application
import 'package:flutter/material.dart';
//import the main screen package
import 'package:flutter_sushi_app/main_screen.dart';
//import the dart async package
import 'dart:async';

class splashScreen extends StatefulWidget {
  const splashScreen({Key key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override

  /// *create a function
  /// after 3 seconds
  /// teh splash screen gone
  /// and mainScreen visible
  ///**/
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => mainScreen(),
      ));
    });

  }

  /// *
  /// add anything which you want to show
  /// we add right now a simple text
  ///***/
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Image(
            image: AssetImage(
              'assets/images/sushichop.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

