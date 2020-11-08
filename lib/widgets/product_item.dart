import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/provider/product.dart';
import 'package:shop_app/screens/product_details.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Product>(context, listen: false);

    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetails.routeName,
                arguments: productsData.id);
          },
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image.network(
                    productsData.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    productsData.title.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      color: Color(0xFF0336FF),
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 5, right: 5),
                  child: Text(
                    productsData.description,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attach_money,
                            size: 18,
                            color: Color(0xFF0336FF),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            productsData.price.toString(),
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0336FF),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Color(0xFF0336FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Center(
            child: CircleAvatar(
              child: InkWell(
                onTap: () => productsData.isFavouriteToggle(),
                child: Consumer<Product>(
                  builder: (context, productsData, child) => Icon(
                    productsData.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
