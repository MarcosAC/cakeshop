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
          _buildButton(2, "Donuts"),
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




// import 'package:flutter/material.dart';

// class MenuHorizontal extends StatelessWidget {
//   const MenuHorizontal({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ButtonStyle style = ElevatedButton.styleFrom(
//       backgroundColor: Colors.pink,
//       foregroundColor: Colors.white,
//     );

//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           ElevatedButton(
//             onPressed: () {},
//             style: style,
//             child: const Text("Bolos"),
//           ),
//           const SizedBox(width: 15),
//           ElevatedButton(onPressed: () {}, style: style, child: const Text("Doces")),
//           const SizedBox(width: 15),
//           ElevatedButton(onPressed: () {}, style: style, child: const Text("Sobre Mesas")),
//         ],
//       ),
//     );
//   }
// }
