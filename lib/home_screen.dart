//import main packages of our application
import 'package:flutter/material.dart';
//import the sushi category file package
import 'package:flutter_sushi_app/sushi_categori.dart';
//import the sushi category card package
import 'package:flutter_sushi_app/sushsi_card.dart';
//import the hex color package
import 'package:hexcolor/hexcolor.dart';

//create a stateful widget for homescreen
class homeScreen extends StatefulWidget {
  const homeScreen({Key key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
          ),
          SizedBox(
            height: 15,
          ),

          //home page-1st section
          //in first section we have
          //total 3 text content
          Container(
            //wrap all the content into stack widget
            child: Stack(
              children: [
                //1st container for 1st text
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "👋 Hi, Angle!",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#494D58'),
                    ),
                  ),
                ),
                //2nd container for 2nd text
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                  //padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "What is your\nfavourite sushi?",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#494D58'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //--------------------------------//

          //home page-2nd section
          //for search box
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
              //create some shape
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),

              //for search input text
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  hintText: "Search your sushi",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          //--------------------------------//

          //----------home page-3rd section-----------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //----------home page-3rd section-----------
          SizedBox(
            height: 15,
          ),
          //----------home page-4th section-----------
          //create a separate file for this section
          sushiCategori(),
          SizedBox(
            height: 30,
          ),
          //----------home page-5th section-----------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Sushi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //----------home page-6th section-----------
          //create a separate file for this section
          sushiCard(),
        ],
      ),
    );
  }
}
