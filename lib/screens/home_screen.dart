import 'package:cakeshop/widgets/menu_horizontal.dart';
import 'package:cakeshop/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _selctedIndexMenuHorizontal = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTappedMenuHorizontal(int index) {
    setState(() {
      _selctedIndexMenuHorizontal = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Cake Shop")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Bem vindo!"),
            const SizedBox(height: 10),
            MenuHorizontal(
              selectedIndex: _selctedIndexMenuHorizontal,
              onButtonPressed: _onItemTappedMenuHorizontal,
            ),
            const SizedBox(height: 15),
            Expanded(
              flex: 3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(
                    productName: 'Bolo de chocolate',
                    imageUrl: 'assets/bolomorango.jpg',
                  ),
                  ProductCard(
                    productName: 'Bolo de chocolate',
                    imageUrl: 'assets/bolomorango.jpg',
                  ),
                  ProductCard(
                    productName: 'Bolo de chocolate',
                    imageUrl: 'assets/bolomorango.jpg',
                  ),
                  ProductCard(
                    productName: 'Bolo de chocolate',
                    imageUrl: 'assets/bolomorango.jpg',
                  ),
                  ProductCard(
                    productName: 'Bolo de chocolate',
                    imageUrl: 'assets/bolomorango.jpg',
                  ),
                  ProductCard(
                    productName: 'Bolo de chocolate',
                    imageUrl: 'assets/bolomorango.jpg',
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Os mais pedidos"),
            const SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView(
                children: [
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  ),
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  ),
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  ),
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  ),
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  ),
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  ),
                  Card(
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
                              'assets/bolomorango.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bolo de Chocolate!!!"),
                                Text("Recheio de Geleia de Morango!!!", style: TextStyle(fontSize: 10)),
                                Text("R\$ 70,00"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.cake_outlined), label: 'Bolos'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined), label: 'Doces'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Amei'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
