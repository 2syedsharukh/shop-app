import 'package:flutter/material.dart';
import 'package:shop_app/provider/products_provider.dart';
import 'package:shop_app/screens/product_details.dart';
import 'package:shop_app/screens/product_overview.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // value: ProductsProvider(),
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductOverview(),
        routes: {
          ProductDetails.routeName: (context) => ProductDetails(),
        },
      ),
    );
  }
}
