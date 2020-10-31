import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/product_details.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final String description;
  final double price;

  ProductItem(
      {this.id, this.imageUrl, this.price, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetails.routeName, arguments: id);
          },
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Color(0xFF0336FF),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    title.toUpperCase(),
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
                    description,
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
                            price.toString(),
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
              child: Icon(Icons.access_alarm),
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
