import 'package:flutter/material.dart';

import '../models/product.dart';
import '../pages/Contact.dart';
import '../pages/My_Account.dart';
import '../pages/My_Setting.dart';
import '../pages/allcategories.dart';
import '../pages/loginScreen.dart';
import '../pages/mycart.dart';
import '../pages/myorder.dart';
import '../widgets/product_item.dart';

class ProductOverview extends StatefulWidget {
  const ProductOverview({super.key});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: '250 g musturd oil',
      description: 'Pure musturd oil 250 g packaging',
      price: 60,
      imageUrl:
          'data:image/jpeg;base64,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',
    ),
    Product(
        id: 'p2',
        title: '500 g musturedOil',
        description: 'Pure mustured oil 500 g packaging',
        price: 100,
        imageUrl: ''),
    Product(
      id: 'p3',
      title: '1000 g musturd oil',
      description: 'Pure musturd oil 1000 g packaging',
      price: 190,
      imageUrl:
          'data:image/jpeg;base64,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',
    ),
    Product(
      id: 'p4',
      title: '5000 g musturedOil',
      description: 'Pure mustured oil 500 g packaging',
      price: 800,
      imageUrl:
          'data:image/jpeg;base64,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',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Shoppers solution"),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              icon: Icon(Icons.login),
              label: Text("login"),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 204, 186, 80)),
              child: Column(
                children: [
                  Icon(Icons.person),
                  Text("Ashish Mradul Avadhesh"),
                  ListTile(
                    title: Text(
                      "view profile",
                      style: TextStyle(fontSize: 10),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("All Categories"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllCategories(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Order"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrder(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Cart"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCart(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccount(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Setting"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySetting(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Contact"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Contact(),
                  ),
                );
              },
            ),
            ElevatedButton(onPressed: () {}, child: Text("Logout")),
          ],
        ),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedProducts.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
              childAspectRatio: 3/2, crossAxisSpacing: 10,mainAxisSpacing: 10),
          itemBuilder: (context, i) => ProductItem(loadedProducts[i].id,loadedProducts[i].title,loadedProducts[i].imageUrl)),
    );
  }
}
