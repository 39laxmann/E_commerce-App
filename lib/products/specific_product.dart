import 'package:e_commerce_app/common/scaffold_with_bottomNavbar.dart';
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
    return MainScaffold(
      appbar: AppBar(
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
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},

                    child: Text("Add to cart", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
