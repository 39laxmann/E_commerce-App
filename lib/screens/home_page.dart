import 'package:e_commerce_app/common/scaffold_with_bottomNavbar.dart';
import 'package:e_commerce_app/products/product_carousel.dart';
import 'package:e_commerce_app/products/product_category.dart';
import 'package:e_commerce_app/products/product_display.dart';
import 'package:e_commerce_app/screens/account_page.dart';
import 'package:e_commerce_app/screens/buttomNavigationbar/my_cart.dart';
import 'package:e_commerce_app/screens/buttomNavigationbar/message.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onNavBarTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Already on HomePage, do nothing or maybe pop to root
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyCart()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Message()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyAccount(
              userName: 'Bibek Gautam',
              userEmail: 'bibekGautam@gmail.com',
              userPhoneNo: '984*******',
              userAddress: 'Pulchowk,Lalitpur',
              userOrder: 'Macbook',
            ),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 0, // Home is active
      onTap: (index) => _onNavBarTapped(context, index),
      appbar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Shimmer.fromColors(
              baseColor: Colors.black,
              highlightColor: Colors.grey,
              child: const Text(
                "Shopmandu",
                style: TextStyle(
                  letterSpacing: 2.7,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [
              IconButton(
                onPressed: () {
                  debugPrint("Search button clicked");
                },
                icon: const Icon(Icons.search, size: 32),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 37),
              const ProductCarousel(),
              const SizedBox(height: 23),
              const Divider(color: Colors.grey, thickness: 1, height: 32),
              const Text("Categories", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    ProductCategory(
                      imageCategory: "assets/product_category_image/laptop.png",
                      nameCategory: "Laptop",
                    ),
                    ProductCategory(
                      imageCategory: "assets/product_category_image/cctv.png",
                      nameCategory: "Cctv",
                    ),
                    ProductCategory(
                      imageCategory:
                          "assets/product_category_image/keyboard.png",
                      nameCategory: "Keyboard",
                    ),
                    ProductCategory(
                      imageCategory:
                          "assets/product_category_image/laptop_stand.png",
                      nameCategory: "Stand",
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
                    ProductCategory(
                      imageCategory: "assets/product_category_image/Camera.png",
                      nameCategory: "Camera",
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey, thickness: 1, height: 32),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.96,
                crossAxisSpacing: 12,
                padding: const EdgeInsets.all(12),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ProductDisplay(
                    imagePath: 'assets/product_category_image/laptop.png',
                    productName: 'HP Pavilion 15',
                    productPrice: 85000,
                    starReview: 4.2,
                    reviewerNumber: 11,
                    noofItemsSold: 23,
                    sellerInfo: 'bibekGautam',
                  ),
                  ProductDisplay(
                    imagePath: 'assets/images/cctv_2.png',
                    productName: 'CCTV Camera',
                    productPrice: 4500,
                    starReview: 3.8,
                    reviewerNumber: 52,
                    noofItemsSold: 120,
                    sellerInfo: 'bibekGautam',
                  ),
                  ProductDisplay(
                    imagePath: 'assets/images/canon.png',
                    productName: 'Canon EOS 6D',
                    productPrice: 259999,
                    starReview: 4.5,
                    reviewerNumber: 12,
                    noofItemsSold: 18,
                    sellerInfo: 'bibekGautam',
                  ),
                  ProductDisplay(
                    imagePath: 'assets/images/T5P_ratri_cctv.png',
                    productName: 'T5P Ratri CCTV',
                    productPrice: 6999,
                    starReview: 3.4,
                    reviewerNumber: 31,
                    noofItemsSold: 228,
                    sellerInfo: 'bibekGautam',
                  ),
                  ProductDisplay(
                    imagePath: 'assets/images/Msi_monitor.png',
                    productName: 'MSI 1080p FULL HD Monitor',
                    productPrice: 18000,
                    starReview: 5.0,
                    reviewerNumber: 8,
                    noofItemsSold: 17,
                    sellerInfo: 'Laxman Thapa',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
