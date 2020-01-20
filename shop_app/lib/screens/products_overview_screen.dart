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
      imageUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.customink.com%2Fmms%2Fimages%2Fcatalog%2Fstyles%2F4600%2Fcatalog_detail_image_medium.jpg&imgrefurl=https%3A%2F%2Fwww.customink.com%2Ft-shirts%2Fphoto-t-shirts&tbnid=KNJJd5QcNHXAzM&vet=12ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg..i&docid=xH-X_6T_xhAwbM&w=479&h=479&q=shirt%20photo&ved=2ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg',
    ),
    Product(
      id: 'p2',
      title: 'title2',
      description: 'description2',
      price: 200,
      imageUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.customink.com%2Fmms%2Fimages%2Fcatalog%2Fstyles%2F4600%2Fcatalog_detail_image_medium.jpg&imgrefurl=https%3A%2F%2Fwww.customink.com%2Ft-shirts%2Fphoto-t-shirts&tbnid=KNJJd5QcNHXAzM&vet=12ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg..i&docid=xH-X_6T_xhAwbM&w=479&h=479&q=shirt%20photo&ved=2ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg',
    ),
    Product(
      id: 'p3',
      title: 'title3',
      description: 'description3',
      price: 200,
      imageUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.customink.com%2Fmms%2Fimages%2Fcatalog%2Fstyles%2F4600%2Fcatalog_detail_image_medium.jpg&imgrefurl=https%3A%2F%2Fwww.customink.com%2Ft-shirts%2Fphoto-t-shirts&tbnid=KNJJd5QcNHXAzM&vet=12ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg..i&docid=xH-X_6T_xhAwbM&w=479&h=479&q=shirt%20photo&ved=2ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg',
    ),
    Product(
      id: 'p4',
      title: 'title4',
      description: 'description4',
      price: 200,
      imageUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.customink.com%2Fmms%2Fimages%2Fcatalog%2Fstyles%2F4600%2Fcatalog_detail_image_medium.jpg&imgrefurl=https%3A%2F%2Fwww.customink.com%2Ft-shirts%2Fphoto-t-shirts&tbnid=KNJJd5QcNHXAzM&vet=12ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg..i&docid=xH-X_6T_xhAwbM&w=479&h=479&q=shirt%20photo&ved=2ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg',
    ),
    Product(
      id: 'p5',
      title: 'title5',
      description: 'description5',
      price: 200,
      imageUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.customink.com%2Fmms%2Fimages%2Fcatalog%2Fstyles%2F4600%2Fcatalog_detail_image_medium.jpg&imgrefurl=https%3A%2F%2Fwww.customink.com%2Ft-shirts%2Fphoto-t-shirts&tbnid=KNJJd5QcNHXAzM&vet=12ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg..i&docid=xH-X_6T_xhAwbM&w=479&h=479&q=shirt%20photo&ved=2ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg',
    ),
    Product(
      id: 'p6',
      title: 'title6',
      description: 'description6',
      price: 200,
      imageUrl:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.customink.com%2Fmms%2Fimages%2Fcatalog%2Fstyles%2F4600%2Fcatalog_detail_image_medium.jpg&imgrefurl=https%3A%2F%2Fwww.customink.com%2Ft-shirts%2Fphoto-t-shirts&tbnid=KNJJd5QcNHXAzM&vet=12ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg..i&docid=xH-X_6T_xhAwbM&w=479&h=479&q=shirt%20photo&ved=2ahUKEwjj3_rfoJLnAhWTen0KHXkfCbAQMygAegUIARCyAg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
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
