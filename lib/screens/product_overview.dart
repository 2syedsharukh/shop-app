import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/utils/scroll_behaviour.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterProduct {
  Favourite,
  All,
}

class ProductOverview extends StatefulWidget {
  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  var _showFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0336FF),
        actions: [
          PopupMenuButton(
            onSelected: (FilterProduct selectedValue) => {
              setState(() {
                selectedValue == FilterProduct.Favourite
                    ? _showFavourite = true
                    : _showFavourite = false;
              }),
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "Favourites",
                  style: GoogleFonts.montserrat(),
                ),
                value: FilterProduct.Favourite,
              ),
              PopupMenuItem(
                child: Text(
                  "Show all",
                  style: GoogleFonts.montserrat(),
                ),
                value: FilterProduct.All,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFF0336FF),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: ScrollConfiguration(
          behavior: MyScrollBehaviour(),
          child: ProductsGrid(
            showFavourites: _showFavourite,
          ),
        ),
      ),
    );
  }
}
