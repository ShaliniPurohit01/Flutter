import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';
// import '../models/product.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = './porduct-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String; //id
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
