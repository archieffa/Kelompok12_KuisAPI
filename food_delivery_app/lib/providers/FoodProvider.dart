import 'package:flutter/material.dart';
import '../model/food.dart';

class FoodProvider extends ChangeNotifier {
  final List<Food> _foods = [];
  int get totalPrice => _foods.length * 10;
  List<Food> get foods => _foods;

  void add(Food food) {
    _foods.add(food);
    notifyListeners();
  }

  void remove(Food food) {
    _foods.remove(food);
    notifyListeners();
  }

  void removeAll(Food food) {
    _foods.clear();
    notifyListeners();
  }

  double getCartTotal() {
    return _foods.fold(0, (previousValue, food) => previousValue + food.price);
  }

  bool isFoodExists(String foodName) {
    return _foods.any((food) => food.title == foodName);
  }
}
