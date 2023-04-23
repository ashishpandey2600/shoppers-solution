import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution_shoppers/model/cart_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY CART")),
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
                itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: ListTile(
                    leading: Image.asset(value.cartItems[index][2],
                    height: 36,
                    ),
                    title: Text(value.cartItems[index][0],),
                    subtitle: Text('₹'+ value.cartItems[index][1]),
                    trailing: IconButton(icon: Icon(Icons.cancel),
                    onPressed: ()=>Provider.of<CartModel>(
                      context, listen: false
                    ).removeItemFromCart(index),
                    ),
                  ),
                  ),
              );
            }
            ),
            ),
            Padding(padding: EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.green,
              borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(24),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Price",
                    style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 4,),
                    Text('₹'+ value.calculateTotal(),
                    style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                //Pay Now button
                SizedBox(width: 100,),
                Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.green.shade100),

                ),
                padding: EdgeInsets.all(12),
                child: Row(children: [
                  Text("Pay Now",
                  style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward_ios,size: 16,color: Colors.white,)
                ],),
                )
              ],),
            ),
            )
          ],
        );
      }),
    );
  }
}
