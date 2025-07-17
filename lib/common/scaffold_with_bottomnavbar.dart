import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  final Widget body;
  final int currentIndex;
  final Function(int)? onTap;
  final PreferredSizeWidget? appbar;

  const MainScaffold({
    required this.body,
    this.currentIndex = 0,
    this.onTap,
    super.key,
    this.appbar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar,
      body: body,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: Colors.white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orangeAccent,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 32),
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
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined, size: 32),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
