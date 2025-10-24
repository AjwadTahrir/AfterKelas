import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    [Colors.brown[200], "Physics", "lib/images/Physics.png", "5.00"],
    [Colors.brown[200], "Chemistry", "lib/images/chemistry.png", "5.00"],
    [Colors.brown[200], "Programming", "lib/images/programming.png", "5.00"],
    [Colors.brown[200], "Maths", "lib/images/maths.png", "5.00"],
  ];
  List _cartItems = [];
  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add items
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove items
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][3]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
