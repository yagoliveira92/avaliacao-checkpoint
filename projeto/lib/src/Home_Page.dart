import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _barradeInformacoes(),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Image.asset('assets/images/Banner.png', fit: BoxFit.cover),
                    ),
                    Image.asset('assets/images/Hero.png', height: 200),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _barradeInformacoes() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/image.png', height: 35, fit: BoxFit.contain),
              const Spacer(),
              const Text(
                'Sobre nós',
                style: TextStyle(color: Color(0xFF333333), fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(width: 15),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF1E1E2C)),
              ),
              const SizedBox(width: 5),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline, size: 24, color: Color(0xFF1E1E2C)),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined, size: 24, color: Color(0xFF1E1E2C)),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você procura?',
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                  ),
                ),
                Icon(Icons.search, color: Colors.black54, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
