// this is a scaffold with the bottom navigation bar

import 'package:e_commerce_app/screens/buttomNavigationbar/account_page.dart';
import 'package:e_commerce_app/screens/buttomNavigationbar/home_page.dart';
import 'package:e_commerce_app/screens/buttomNavigationbar/message.dart';
import 'package:e_commerce_app/screens/buttomNavigationbar/my_cart.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  List<Widget> body = [
    HomePage(),
    Message(),
    MyCart(),
    MyAccount(
      userName: 'BibekG@utam',
      userEmail: 'bibekgautam@gmail.com',
      userPhoneNo: '984*******',
      userAddress: 'Pulchowk Lalipur',
      userOrder: 'Macbook',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 220, 112, 79),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        iconSize: 27,

        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
