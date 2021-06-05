import 'package:flutter/material.dart';

class sushiCategori extends StatefulWidget {
  const sushiCategori({Key key}) : super(key: key);

  @override
  _sushiCategoriState createState() => _sushiCategoriState();
}

class _sushiCategoriState extends State<sushiCategori> {

  //---create list to store the values---

  //List to store all the images
  List<String> imagePath = [
    "assets/images/fish.png",
    "assets/images/caviar.png",
    "assets/images/rice-bowl.png",
    "assets/images/octopus.png",
    "assets/images/shrimp.png",
  ];
//List to store all the text
  List<String> Categori = [
    "Salmon",
    "Caviar",
    "Rice",
    "Octopus",
    "Shrimp"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: imagePath.length,
          //set teh scroll horizontal
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Row(
              children: [
                Column(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        //print("hii");
                      },
                      //----for round shape and images-------
                      child: Container(
                        height: 60,
                        width: 50,
                        //give some shape for the container
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //for circle shape
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            /*imagePath[index] means
                            we store the all the images into a list
                            now to grab that list value we use index
                            so if we add more categories in teh future,
                            we don't have to use the images separately here,
                            we can just simply store the images in the list
                            and the image will automatically show on that category
                             */
                            image: AssetImage(imagePath[index]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //------for sub text---------
                    Text(
                        Categori[index],
                      style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
