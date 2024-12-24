import 'package:flutter/material.dart';
import 'package:my_web_tes/widget/customButton.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String? oldPrice;

  const CustomCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                if (oldPrice != null)
                  Text(
                    oldPrice!,
                    style: const TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomButton(text: "ADD TO CART"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
