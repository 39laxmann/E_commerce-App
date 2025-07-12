import 'package:e_commerce_app/products/product_carousel.dart';
import 'package:e_commerce_app/products/product_category.dart';
import 'package:e_commerce_app/screens/account_page.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Shimmer.fromColors(
          baseColor: Colors.black,
          highlightColor: Colors.grey,
          child: const Text("Shopmandu", style: TextStyle(letterSpacing: 2.7)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Account button pressed");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAccount()),
              );
            },
            icon: Icon(Icons.account_circle_outlined, size: 40),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 37),
              ProductCarousel(),
              SizedBox(height: 23),
              Text("Category", style: TextStyle()),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCategory(
                      imageCategory: "assets/product_category_image/cctv.png",
                      nameCategory: "CCTV",
                    ),
                    ProductCategory(
                      imageCategory:
                          "assets/product_category_image/keyboard.png",
                      nameCategory: "Keyboard",
                    ),
                    ProductCategory(
                      imageCategory: "assets/product_category_image/laptop.png",
                      nameCategory: "Laptop",
                    ),
                    ProductCategory(
                      imageCategory:
                          "assets/product_category_image/laptop_stand.png",
                      nameCategory: "Laptop stand",
                    ),
                    ProductCategory(
                      imageCategory:
                          "assets/product_category_image/monitor.png",
                      nameCategory: "Monitor",
                    ),
                    ProductCategory(
                      imageCategory: "assets/product_category_image/mouse.png",
                      nameCategory: "Mouse",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
