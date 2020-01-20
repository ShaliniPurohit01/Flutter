import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';
import './screens/product_details.dart';
import 'screens/product_details.dart';
import 'screens/product_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetails.routeName: (ctx) => ProductDetails(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop App'),
      ),
      body: Center(
        child: Text('lets build a shop'),
      ),
    );
  }
}
