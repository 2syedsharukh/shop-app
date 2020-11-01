import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Gucci Bag',
      description: 'A Black Gucci leather shoulder bag',
      price: 29.99,
      imageUrl:
          'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1349&q=80',
    ),
    Product(
      id: 'p2',
      title: 'Analog Watch',
      description: 'Round black analog watch on stone',
      price: 59.99,
      imageUrl:
          'https://images.unsplash.com/photo-1495856458515-0637185db551?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy for winter.',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1519759884506-08104e503831?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    Product(
      id: 'p4',
      title: 'Sneaker',
      description: 'Black and white New Balance low-top sneaker',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1539185441755-769473a23570?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80',
    ),
    Product(
      id: 'p5',
      title: 'Black Umbrella',
      description: 'Umbrella for rainy days',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1513866717996-6c19fd870937?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findProductById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  void addProducts() {
    notifyListeners();
  }
}
