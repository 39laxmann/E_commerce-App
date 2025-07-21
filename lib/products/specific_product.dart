import 'package:e_commerce_app/products/add_to_cart.dart';
import 'package:flutter/material.dart';

class SpecificProduct extends StatelessWidget {
  const SpecificProduct({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
    required this.sellerInfo,
  });

  final String imagePath;
  final String productName;
  final int productPrice;
  final String sellerInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          productName,
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Roboto-VariableFont_wdth,wght.ttf",
            wordSpacing: 3,
          ),

          textAlign: TextAlign.start,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 23),
            Text(
              "Rs ${productPrice.toString()}",
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
            SizedBox(height: 12),
            Text("Seller Information", style: TextStyle(fontSize: 20)),
            Text(
              sellerInfo,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 120,
              width: 168,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow[700]),
                  textStyle: WidgetStatePropertyAll(
                    TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  debugPrint("Buy now button pressed");
                },
                child: Text("Buy Now"),
              ),
            ),
            SizedBox(
              height: 120,
              width: 168,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red[300]),
                  textStyle: WidgetStatePropertyAll(
                    TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  debugPrint("Add to cart button pressed");
                  addtoCart(context, imagePath, productPrice);
                },
                child: Text("Add to cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
