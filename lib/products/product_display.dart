import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  final String imagePath;
  final double productPrice;
  final String productName;

  const ProductDisplay({
    super.key,
    required this.imagePath,
    required this.productPrice,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,

      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(imagePath, height: 90, fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 8),

            // Product Name
            Text(
              productName,
              style: const TextStyle(fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 4),

            // Product Price
            Text(
              "Rs ${productPrice.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
