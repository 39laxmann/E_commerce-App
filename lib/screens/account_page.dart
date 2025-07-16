// ignore: unused_import
import 'dart:ffi';

import 'package:e_commerce_app/screens/buttomNavigationBar.dart/myCart.dart';
import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/user_profile/change_password.dart';
import 'package:e_commerce_app/user_profile/edit_profile.dart';
import 'package:e_commerce_app/user_profile/setting.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userPhoneNo;
  final String userAddress;
  final String userOrder;
  const MyAccount({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userPhoneNo,
    required this.userAddress,
    required this.userOrder,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.blue),
        ),
        title: const Text(
          'Your Profile',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, color: Colors.orange),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            icon: const Icon(Icons.settings, color: Colors.black),
          ),
        ],
        elevation: 1,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            //Icon(Icons.real_estate_agent),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
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
                    //name and email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          userEmail,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Information',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Phone:     $userPhoneNo",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Address: $userAddress',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Orders',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Order: $userOrder",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 4),
                     
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      // MaterialPageRoute(builder: (context) => EditProfile()),
                       MaterialPageRoute(builder: (context) => MyCart()),
                    );
                  },
                  child: Text("Edit profile", style: TextStyle(fontSize: 19)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangePassword()),
                    );
                  },
                  child: Text(
                    "change password",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
