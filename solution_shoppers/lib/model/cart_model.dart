import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["1L Packing Mustard Oil", "100", "assets/a.jpg", Colors.green],
    ["10L Packing Mustard Oil", "101", "assets/a.jpg", Colors.orange],
    ["1L Packing Mustard Oil", "110", "assets/a.jpg", Colors.yellow],
    ["1L Packing Mustard Oil", "103", "assets/a.jpg", Colors.red],
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

    for(int i=0;i< _cartItems.length;i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
