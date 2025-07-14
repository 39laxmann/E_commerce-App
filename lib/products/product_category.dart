import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  final String imageCategory;
  final String nameCategory;
  const ProductCategory({
    super.key,
    required this.imageCategory,
    required this.nameCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: SizedBox(
        height: 120,
        width: 100,
        child: Column(
          children: [
            Image.asset(
              imageCategory,
              height: 71,
              width: 71,
              fit: BoxFit.cover,
            ),
            Text(nameCategory),
          ],
        ),
      ),
    );
  }
}
