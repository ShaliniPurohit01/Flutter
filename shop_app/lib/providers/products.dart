import '../models/product.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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
  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    notifyListeners();
  }
}
