import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Cake Shop")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Bem vindo!"),
            // Expanded(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
            //       ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
            //       ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
            //       ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
            //       ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
            //       ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Card(
                    child: SizedBox(
                      width: 100,
                      height: 300,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 100,
                      height: 300,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 100,
                      height: 300,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 100,
                      height: 300,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 100,
                      height: 300,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                ],
              ),
            ),
            const Text("Os mais pedidos"),
            Expanded(
              child: ListView(
                children: const [
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Center(child: Text("Foto com bolo")),
                    ),
                  ),
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
