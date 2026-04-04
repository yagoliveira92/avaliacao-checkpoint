import 'package:flutter/material.dart'; 

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu, size: 35, color: Color(0xFF090129)),
          Image.asset('assets/Logo UseDev.png', height: 50),
          const Row(
            children: [
              Icon(Icons.person_outline, size: 50, color: Color(0xFF090129)),
              Icon(
                Icons.shopping_cart_outlined,
                size: 50,
                color: Color(0xFF090129),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
