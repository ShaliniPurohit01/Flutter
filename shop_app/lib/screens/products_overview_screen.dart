import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'title1',
      description: 'description1',
      price: 200,
      imageUrl: 'http://pngimg.com/uploads/polo_shirt/polo_shirt_PNG8171.png',
    ),
    Product(
      id: 'p2',
      title: 'title2',
      description: 'description2',
      price: 200,
      imageUrl: 'http://pngimg.com/uploads/polo_shirt/polo_shirt_PNG8171.png',
    ),
    Product(
      id: 'p3',
      title: 'title3',
      description: 'description3',
      price: 200,
      imageUrl: 'http://pngimg.com/uploads/polo_shirt/polo_shirt_PNG8171.png',
    ),
    Product(
      id: 'p4',
      title: 'title4',
      description: 'description4',
      price: 200,
      imageUrl: 'http://pngimg.com/uploads/polo_shirt/polo_shirt_PNG8171.png',
    ),
    Product(
      id: 'p5',
      title: 'title5',
      description: 'description5',
      price: 200,
      imageUrl: 'http://pngimg.com/uploads/polo_shirt/polo_shirt_PNG8171.png',
    ),
    Product(
      id: 'p6',
      title: 'title6',
      description: 'description6',
      price: 200,
      imageUrl: 'http://pngimg.com/uploads/polo_shirt/polo_shirt_PNG8171.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopApp'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
