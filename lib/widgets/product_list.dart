import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final String productName;
  final String description;
  final String price;
  final String imageUrl;

  const ProductList({
    super.key,
    required this.productName,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName),
                  Text(description, style: const TextStyle(fontSize: 10)),
                  Text(price),
                ],
              ),
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
          ],
        ),
      ),
    );
  }
}
