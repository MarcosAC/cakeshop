import 'package:flutter/material.dart';

class ProductDetailCard extends StatelessWidget {
  final String productName;
  final String description;
  final String detailDescription;
  final String price;
  final String imageUrl;

  const ProductDetailCard({
    super.key,
    required this.productName,
    required this.description,
    required this.detailDescription,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(imageUrl, fit: BoxFit.cover),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(productName),
                      Text(description, style: const TextStyle(fontSize: 10)),
                      Row(
                        children: [
                          Text(price),
                        ],
                      ),
                      const Text('Sobre o Bolo'),
                      Text(detailDescription, style: const TextStyle(fontSize: 10)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFE3A48),
                        ),
                        child: const Text(
                          'Adicionar ao Carrinho',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
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
