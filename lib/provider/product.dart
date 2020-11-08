import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String title;
  final String description;
  final String id;
  final String imageUrl;
  final double price;
  bool isFavourite;

  Product({
    @required this.price,
    @required this.description,
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    this.isFavourite = false,
  });

  void isFavouriteToggle() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
