import 'package:cakeshop/widgets/product_detail_card.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProducDetailScreenState();
}

class _ProducDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bolo de Chocolate'),
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios));
        }),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: ProductDetailCard(
              productName: 'Bolo de Chocolate!!!',
              description: 'Recheio de Geleia de Morango!!!',
              price: 'R\$ 70,00',
              detailDescription: 'Bolo de chocolate com recheio de geleia de morango.',
              imageUrl: 'assets/bolomorango.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
