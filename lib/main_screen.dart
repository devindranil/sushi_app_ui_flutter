//import main packages of our application
import 'package:flutter/material.dart';
//import drawer box file packages
import 'package:flutter_sushi_app/drawer_box.dart';
//import home screen package
import 'package:flutter_sushi_app/home_screen.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key key}) : super(key: key);

  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //change the scaffold default background color
      backgroundColor: Color(0XFFeaecf4),
      //create a appbar
      appBar: AppBar(
        //change the background color
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        //Now in order to have a custom drawer Icon, lets remove the default one first
        automaticallyImplyLeading: false,
        //create a custom drawer icon
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Builder(
            builder: (context) => IconButton(
              color: Colors.black,
              //to increase the size
              padding: EdgeInsets.all(0),
              icon: Image.asset(
                'assets/images/hamburger_menu.png',
                width: 50,
                height: 30,
                fit: BoxFit.contain,
              ),
              //in the onpressed method
              //we use opeDrawer function
              //to create a drawer functionality
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
      //create separate file for drawer
      drawer: drawerBox(),
      //create a separate file home page/1st screen of pur app
      body: SingleChildScrollView(
        child: homeScreen(),
      ),
    );
  }
}
