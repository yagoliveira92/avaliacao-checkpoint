import 'package:flutter/material.dart';

class DevAppBar extends StatelessWidget {
  const DevAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, size: 32, color: Colors.black),
              Image.asset('assets/Logo_UseDev.png', width: 79.61, height: 48),
              const Row(
                children: [
                  Icon(Icons.person_outline, size: 46, color: Colors.black),
                  SizedBox(width: 16),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 46,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 32),
          //pesquisa
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 22),
            height: 74,
            width: 362,
            decoration: BoxDecoration(
              color: const Color(0xFFEAEAEA),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Text(
                    'O que você procura?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Color(0xFF090129)),
                  ),
                ),
                const SizedBox(width: 40),
                Icon(Icons.search, color: Color(0xFF090129), size: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
