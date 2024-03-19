import 'package:flutter/material.dart';

class MenuHorizontal extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onButtonPressed;

  const MenuHorizontal({
    required this.selectedIndex,
    required this.onButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildButton(0, "Bolos"),
          const SizedBox(width: 15),
          _buildButton(1, "Doces"),
          const SizedBox(width: 15),
          _buildButton(2, "Mini Donuts"),
          const SizedBox(width: 15),
          _buildButton(3, "Sobre Mesas"),
        ],
      ),
    );
  }

  ElevatedButton _buildButton(int index, String text) {
    final selectedStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.pink,
      foregroundColor: Colors.white,
    );

    final unselectedStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );

    return ElevatedButton(
      onPressed: () => onButtonPressed(index),
      style: selectedIndex == index ? selectedStyle : unselectedStyle,
      child: Text(text),
    );
  }
}
