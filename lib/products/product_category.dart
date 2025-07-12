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
    return SizedBox(
      width: 120,
      height: 148,
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
          child: Column(
            children: [
              Image.asset(
                imageCategory,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Text(nameCategory),
            ],
          ),
        ),
      ),
    );
  }
}
