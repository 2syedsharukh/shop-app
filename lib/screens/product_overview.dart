import 'package:flutter/material.dart';
import 'package:shop_app/utils/scroll_behaviour.dart';
import 'package:shop_app/widgets/products_grid.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0336FF),
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: ScrollConfiguration(
          behavior: MyScrollBehaviour(),
          child: ProductsGrid(),
        ),
      ),
    );
  }
}
