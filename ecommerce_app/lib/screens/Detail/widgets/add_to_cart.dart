import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_model.dart';
import '../../../providers/add_to_cart_provider.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Container(
        height: screenHeight * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth * 0.1),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: screenHeight * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth * 0.05),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (currentIndex != 1) {
                        setState(() {
                          currentIndex--;
                        });
                      }
                    },
                    iconSize: screenWidth * 0.04,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    currentIndex.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex++;
                      });
                    },
                    iconSize: screenWidth * 0.04,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                provider.toogleFavorite(widget.product);
                // if items are added, then show this snackbar
                const snackBar = SnackBar(
                  content: Text(
                    "Successfully added!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: screenHeight * 0.065,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(screenWidth * 0.1),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.05,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
