import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["1L Packing Mustard Oil", "210", "assets/m.png", Colors.green],
    ["2L Packing Mustard Oil", "410", "assets/m.png", Colors.red],
    ["5L Packing Mustard Oil", "1000", "assets/m.png", Colors.orange],
    ["10L Packing Mustard Oil", "2000", "assets/m.png", Colors.yellow],
    ["15L Packing Mustard Oil", "3000", "assets/m.png", Colors.red],
  ];

  //list of cart items
  List _cartItems = [];
  get shopItem => _shopItems;
  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;

    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
