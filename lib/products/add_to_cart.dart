import 'package:flutter/material.dart';

void addtoCart(BuildContext context, String imagePath, int productPrice) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return FractionallySizedBox(
        alignment: Alignment.center,
        heightFactor: 0.98,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset(
                        imagePath,
                        height: 86,
                        width: 86,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("Rs."),
                    Text(
                      productPrice.toString(),
                      style: TextStyle(color: Colors.red[300], fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
