import 'package:e_commerce_app/screens/home_page.dart';
import 'package:e_commerce_app/theme/apptheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopmandu",
      theme: Apptheme.lightTheme,
      home: HomePage(),
    );
  }
}
