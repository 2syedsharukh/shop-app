import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double price;

  ProductItem({this.imageUrl, this.price, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title.toUpperCase(),
            style: GoogleFonts.montserrat(
              color: Color(0xFF0336FF),
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 5, right: 5),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
