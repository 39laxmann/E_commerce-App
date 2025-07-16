import 'package:e_commerce_app/products/product_carousel.dart';
import 'package:e_commerce_app/products/product_category.dart';
import 'package:e_commerce_app/products/product_display.dart';
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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // remove default shadow
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
            iconTheme: IconThemeData(
              color: Colors.black,
            ), // ensure icons are black
            actions: [
              IconButton(
                onPressed: () {
                  debugPrint("Account button pressed");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAccount(
                        userName: "Random user",
                        userEmail: "randomperson@gmail.com",
                        userPhoneNo: "984*******",
                        userAddress: "Pulchowk Lalitpur",
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.account_circle_outlined, size: 34),
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
              SizedBox(height: 37),
              ProductCarousel(),
              SizedBox(height: 23),
              Divider(color: Colors.grey, thickness: 1, height: 32),
              Text("Categories", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
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
              Divider(color: Colors.grey, thickness: 1, height: 32),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.96, // Adjust based on design
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
                  // add more items...
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orangeAccent,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 32),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 32),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, size: 32),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded, size: 32),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
