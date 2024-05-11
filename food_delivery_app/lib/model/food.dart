import 'package:flutter/material.dart';

class Food {
  final String title;
  final String description;
  final int price;
  final String img_name;
  final int id;

  Food({
    required this.title,
    required this.description,
    required this.price,
    required this.img_name,
    required this.id,
  });
}

final List<Food> foods = [
  Food(
    title: 'Mie Bakso',
    description: 'Mie Bakso gurih dengan bakso yang besar',
    price: 12000,
    img_name: 'bakso.png',
    id: 1
  ),
  Food(
    title: 'Nasi Goreng',
    description: 'Nasi goreng enak dan melimpah',
    price: 10000,
    img_name: 'nasi_goreng.png',
    id: 2
  ),
  Food(
    title: 'Nasi Kuning',
    description: 'Nasi kuning lezat pisan',
    price: 17000,
    img_name: 'nasi_kuning.png',
    id: 3
  ),
  Food(
    title: 'Kupat Tahu',
    description: 'Kupat Tahu dengan kuah melimpah',
    price: 5000,
    img_name: 'kupat_tahu.png',
    id: 4
  ),
  Food(
    title: 'Pecel Lele',
    description: 'Pecel lele dengan ikan lele yang segar',
    price: 11000,
    img_name: 'pecel_lele.png',
    id: 5
  ),
  Food(
    title: 'Ayam Geprek',
    description: 'Pecel lele dengan ikan lele yang segar',
    price: 11000,
    img_name: 'ayam_geprek.png',
    id: 6
  ),
];