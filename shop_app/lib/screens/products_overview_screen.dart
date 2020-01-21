import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopApp'),
      ),
      body: ProductsGrid(),
    );
  }
}
