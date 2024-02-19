import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
                  ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
                  ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
                  ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
                  ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
                  ElevatedButton(onPressed: () {}, child: const Text("Bolo")),
                ],
              ),
            ),
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
    );
  }
}
