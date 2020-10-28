import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductOverview extends StatelessWidget {
  final List<Product> loadedProducts = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0336FF),
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            // mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => Container(
              child: ProductItem(
            imageUrl: loadedProducts[index].imageUrl,
            title: loadedProducts[index].title,
            description: loadedProducts[index].description,
            price: loadedProducts[index].price,
          )),
        ),
      ),
    );
  }
}
