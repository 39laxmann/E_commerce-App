// ignore: file_names, unused_import
import 'dart:ffi';

// ignore: unused_import
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,

        title: const Text(
          'MyCart',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 24),
        ),

        elevation: 1,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleCard(order: 'Mac Pro', price: "120000"),
            SingleCard(order: "Nitro ", price: "100000"),
            SingleCard(order: "Keyboard", price: "Rs.4200"),

            SizedBox(height: 6),

            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Total'),
                      SizedBox(width: 125),

                      Text('sumOfOrders'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleCard extends StatelessWidget {
  final String order;
  final String price;
  const SingleCard({super.key, required this.order, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      color: const Color.fromARGB(255, 164, 226, 143),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                'assets/product_category_image/laptop.png',
              ),
            ),
            SizedBox(width: 12),

            //Cart Items
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),

                Text(price, style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            SizedBox(width: 128),
            SizedBox(height: 5),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Icon(Icons.delete, color: Colors.orange, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
