import 'package:flutter/material.dart';


//this is the second screen of our application
class DetailsOrderScreen extends StatefulWidget {

  const DetailsOrderScreen({Key key}) : super(key: key);

  @override
  _DetailsOrderScreenState createState() => _DetailsOrderScreenState();
}

class _DetailsOrderScreenState extends State<DetailsOrderScreen> {
  bool isFavorite = false;
  //---create list to store the values---

  //List to store all the images
  List<String> imagePath = [
    'assets/images/fish.png',
    'assets/images/caviar.png',
    'assets/images/rice-bowl.png',
  ];
  //List to store all the text
  List<String> category = ['Salmon', "Caviar", "rice"];

  ///create a custom widget for quantity buttons
  Widget customOrderButton(int buttonColor, int txtColor, String units) {
    return MaterialButton(
      onPressed: () {
        print("clicked");
      },
      color: Color(buttonColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      child: Text(
        "$units",
        style: TextStyle(color: Color(txtColor), fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7eaf2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //---------detail screen-1st section----------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //wrap into inkwell widget
                  InkWell(
                    //it will help to move to the previous page
                    onTap: () {
                      Navigator.pop(context);
                    },
                    //bak arrow icon
                    child: Container(
                      height: 50,
                      width: 40,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                        color: Color(0xff122332),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ///add to cart button
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 40,
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_outline,
                        size: 18,
                        color: Color(0xff122332),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              //----------------------------------------------
              SizedBox(
                height: 15,
              ),

              //---------detail screen-2nd section----------
              ///haedlines
              Text(
                'Sushi Rolls',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ///sub heading
              Text(
                'Salmon category',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ///star design
              Row(
                children: [
                  SizedBox(
                    width: 125,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Color(0xff12233c),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //----------------------------------------

              //---------detail screen-3rd section----------
              Expanded(
                flex: 1,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: imagePath.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 60,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(imagePath[index]),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              category[index],
                              style: TextStyle(color: Colors.blueGrey[800]),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    );
                  },
                ),
              ),
              //---------------------------------------------------

              //---------detail screen-4th section----------
              //image
              Image.asset('assets/images/sushi_image_2.png', height: 200),
              //text
              Text(
                'Choose the quantity',
                style: TextStyle(letterSpacing: 1, color: Colors.blueGrey[800]),
              ),
              SizedBox(
                height: 15,
              ),

              //---------detail screen-5th section----------
              // quantity buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customOrderButton(0xff12233c, 0xffffffff, "6 units"),
                  customOrderButton(0xffffffff, 0xff12233c, "12 units"),
                  customOrderButton(0xffffffff, 0xff12233c, "24 units"),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              //---------detail screen-6th section----------
              //place the order container
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width,
                height: 120,
                padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    r"$",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              Text(
                                '24',
                                style: TextStyle(
                                  fontSize: 35, color: Color(0xff12233c),),
                              ),
                              Column(
                                children: [
                                  Text(
                                    ".00",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                          Text("Total Price")
                        ],
                      ),
                      //call to action button
                      ButtonTheme(
                        minWidth:180,
                        height:100,
                        child: MaterialButton(
                          onPressed: (){},
                          color: Color(0xff12233c),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Place Order',
                                style: TextStyle(
                                  color:Colors.white
                                ),
                              ),
                              SizedBox(
                                width:15,
                              ),
                              Icon(
                                Icons.fastfood_outlined,
                                color:Colors.white
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
