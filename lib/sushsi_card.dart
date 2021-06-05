import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/details_order_screen.dart';

class sushiCard extends StatefulWidget {
  const sushiCard({Key key}) : super(key: key);

  @override
  _sushiCardState createState() => _sushiCardState();
}

class _sushiCardState extends State<sushiCard> {
  //---create list to store the values---

  //List to store all the images
  List<String> imagePath = [
    "assets/images/sushi_image_1.png",
    "assets/images/sushi_image_2.png",
    "assets/images/sushi_image_3.png",
    "assets/images/sushi_image_4.png",
    "assets/images/sushi_image_3.png",
    "assets/images/sushi_image_4.png",
    "assets/images/sushi_image_3.png",
    "assets/images/sushi_image_4.png"
  ];
//List to store all the card text name
  List<String> card_name = [
    "Sushi Octopus",
    "Salmon Sushi",
    " Mixed Sushi",
    "New Sushi",
    "Caviar Sushi",
    "Shrimp Sushi",
    "Only Rice",
    "Rice Ball"
  ];
//List to store all the ingredients name
  List<String> ingredients = [
    "Rice + Octopus",
    "Rice+ Salmon",
    "Rice +Octopus",
    "Salmon + Rice",
    "Rice + Caviar",
    "Rice+ Shrimp",
    "Rice + Rice",
    "Salmon + Choco"
  ];
//List to store all the sushi price value
  List<double> card_price = [6.50, 5.60, 7.45, 3.54,6.5, 5.62, 7.43, 3.53];
//List to store a value for the sushi card background color
  List<int> containerColor = [0xff12233c, 0xffffffff, 0xff12233c, 0xffffffff,0xff12233c, 0xffffffff, 0xff12233c, 0xffffffff];
//List to store a value for the sushi card name text color
  List<int> textColor = [0xffffffff, 0xff12233c, 0xffffffff, 0xff12233c,0xffffffff, 0xff12233c, 0xffffffff, 0xff12233c];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //to solve this problem we have wrap our all widget on sizedbox
      height: 250,
      child: Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: imagePath.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                  children: [
                    Container(
                      //give margin to adjust corners
                      margin: EdgeInsets.only(left: 5),
                      width: 140,
                      height: 200,
                      child: Column(
                        children: [
                          //for image
                          Image.asset(
                            imagePath[index],
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          //for card text
                          Text(
                              card_name[index],
                            style: TextStyle(
                              color: Color(textColor[index]),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          //for ingredients name
                          Text(
                            ingredients[index],
                            style: TextStyle(color: Colors.blueGrey),
                          ),
                          //---for price---
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    r'$',
                                    style: TextStyle(
                                      color: Color(textColor[index]),
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  //card price value
                                  Text(
                                    '${card_price[index]}',
                                    style: TextStyle(
                                        color: Color(textColor[index]),
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  //call to action button
                                  ButtonTheme(
                                    minWidth: 30,
                                    height: 30,
                                    child: MaterialButton(
                                      onPressed: (){
                                        //when user click on that button
                                        //move on the detailed screen
                                        Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => DetailsOrderScreen(
                                          )
                                        ),);
                                      },
                                      child: Text(
                                        'Order',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.white
                                        ),
                                      ),
                                      color: Color(0xff465465),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      //to give some shape of the button
                      decoration: BoxDecoration(
                        color: Color(containerColor[index]),
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
              );
            },
        ),
      ),
    );
  }
  }

