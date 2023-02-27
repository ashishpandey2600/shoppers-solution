import 'package:flutter/material.dart';
import 'package:shoppers_solution/models/product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
      ),
      body: Center(child: Text('title')),
    );
  }
}
