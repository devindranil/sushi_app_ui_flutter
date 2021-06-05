//import main packages of our application
import 'package:flutter/material.dart';

class drawerBox extends StatefulWidget {
  const drawerBox({Key key}) : super(key: key);

  @override
  _drawerBoxState createState() => _drawerBoxState();
}

class _drawerBoxState extends State<drawerBox> {
  @override
  Widget build(BuildContext context) {
    //wrap the whole widget into a Theme widget
    //to provide a custom background color for drawer
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color(0XFFeaecf4)
        ),
        //create a container for drawer content
        child: Container(
          width: 300,
          //this is the main porstion of drawer
          child: Drawer(
            child: ListView(
              children: [
                //to create a container
                //for drawer header
                Container(
                  height: 200,
                  color: Color(0xff12233c),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15,top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        //user profile
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/sushi_image_2.png'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //user name
                        Text(
                          'John Doe',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        //user sub text
                        Text(
                          "Sushi all time!",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),

                //to create a list item
                ListTile(
                  //icon
                  leading: Icon(
                    Icons.home,
                    size: 30,
                    color: Color(0xffff273746),
                  ),
                  //text
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xffff273746),
                    ),
                  ),
                  //naviagte the icons
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => homepage(),
                    //   ),
                    // );
                  },
                  contentPadding: EdgeInsets.only(left: 15,bottom: 15),
                ),

                ListTile(
                  //icon
                  leading: Icon(
                    Icons.fastfood,
                    size: 30,
                    color: Color(0xffff273746),
                  ),
                  //text
                  title: Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xffff273746),
                    ),
                  ),
                  //naviagte the icons
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => homepage(),
                    //   ),
                    // );
                  },
                  contentPadding: EdgeInsets.only(left: 15,bottom: 15),
                ),
                ListTile(
                  //icon
                  leading: Icon(
                    Icons.favorite_sharp,
                    size: 30,
                    color: Color(0xffff273746),
                  ),
                  //text
                  title: Text(
                    'Favorites',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xffff273746),
                    ),
                  ),
                  //naviagte the icons
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => homepage(),
                    //   ),
                    // );
                  },
                  contentPadding: EdgeInsets.only(left: 15,bottom: 15),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
