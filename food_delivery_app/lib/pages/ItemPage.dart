import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/widgets/ItemAppBar.dart';
import 'package:food_delivery_app/widgets/ItemBottomBar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemPage(
        title: 'Default Title',
        description: 'Default Description',
        price: 0,
        img_name: 'default_image.png',
        id: 0,
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key, required this.title, required this.description, required this.price, required this.img_name, required this.id}) : super(key: key);
  final String title;
  final String description;
  final int price;
  final String img_name;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "$img_name",
              height: 300,
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$title",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF475269),
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color(0xFFFF7466),
                          ),
                          onRatingUpdate: (rating) {
                    
                          },
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              // child: Icon(
                              //   CupertinoIcons.minus,
                              //   size: 18,
                              // ),
                            ),
                            // Container(
                            //   margin: EdgeInsets.symmetric(horizontal: 10),
                            //   child: Text(
                            //     "02",
                            //     style: TextStyle(
                            //       fontSize: 18,
                            //       fontWeight: FontWeight.bold,
                            //       color: Color(0xFF475269),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   margin: EdgeInsets.all(5),
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     borderRadius: BorderRadius.circular(20),
                            //     boxShadow: [
                            //       BoxShadow(
                            //         color: Colors.grey.withOpacity(0.5),
                            //         spreadRadius: 3,
                            //         blurRadius: 10,
                            //         offset: Offset(0, 3),
                            //       ),
                            //     ],
                            //   ),
                              // child: Icon(
                              //   CupertinoIcons.plus,
                              //   size: 18,
                              // ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      "$description",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF475269),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomBar(
        title: title,
        description: description,
        price: price,
        img_name: img_name,
        id: id,
      ),
    );
  }
}
