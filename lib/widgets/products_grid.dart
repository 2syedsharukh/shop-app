import 'package:flutter/material.dart';
import 'package:shop_app/provider/products_provider.dart';
import 'package:shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.items;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        crossAxisSpacing: 10,
        // mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider(
        create: (context) => products[index],
        child: ProductItem(),
      ),
    );
  }
}
