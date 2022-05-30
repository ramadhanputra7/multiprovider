import 'package:flutter/material.dart';
import 'package:multiprovider/widgets/badge.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';
import '../widgets/product_grid.dart';
import 'cart_screen.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return Badge(
                child: ch!,
                value: value.jumlah.toString(),
                color: Colors.blue,
              );
            },
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  CartScreen.routeName,
                );
              },
            ),
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
