import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 40, bottom: 10, left: 8, right: 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/UseDev.png', height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu, color: Colors.black, size: 40),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_2_outlined, color: Colors.black, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 40),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}