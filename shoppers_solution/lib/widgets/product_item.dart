import 'package:flutter/material.dart';
import 'package:shoppers_solution/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: GridTile(child: GestureDetector(onTap: (){
        Navigator.of(context).pushNamed(ProductScreen.routeName,arguments: id);
      },
      child: Image.network(imageUrl,fit: BoxFit.cover,
      ),
      
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.favorite),
        color: Theme.of(context).accentColor,
        ),
        title: Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(onPressed: (){},
        icon: Icon(Icons.shopping_cart),
        color: Theme.of(context).accentColor,
        ),
      
      ),

      ),
    );
  }
}
