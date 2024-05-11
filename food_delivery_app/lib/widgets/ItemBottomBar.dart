import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/providers/FoodProvider.dart';
import 'package:food_delivery_app/model/food.dart';

class ItemBottomBar extends StatelessWidget {
  const ItemBottomBar(
      {Key? key,
      required this.title,
      required this.description,
      required this.price,
      required this.img_name, required this.id})
      : super(key: key);
  final String title;
  final String description;
  final int price;
  final String img_name;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$price",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              var foodProvider = context.read<FoodProvider>();
              bool foodExists = foodProvider.isFoodExists(title);
              if (!foodExists) {
                foodProvider.add(
                  Food(
                    title: title,
                    description: description,
                    price: price,
                    img_name: img_name,
                    id: id,
                  ),
                );
              }
              ;
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xFFFF7466),
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 13, horizontal: 15),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            icon: Icon(
              CupertinoIcons.cart_badge_plus,
            ),
            label: Text(
              "Tambahkan ke Keranjang",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
