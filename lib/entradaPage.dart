import 'package:flutter/material.dart';

class EntradaPage extends StatelessWidget {
  const EntradaPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color corFundoEscuro = Color(0xFF0D0221);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // CABEÇALHO
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 30,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.store),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Sobre nós',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.person_outline, size: 18),
                      SizedBox(width: 10),
                      Icon(Icons.shopping_cart_outlined, size: 18),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.grey, size: 18),
                    SizedBox(width: 8),
                    Text(
                      'O que você procura?',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // ÁREA DO BANNER
        Container(
          width: double.infinity,
          color: corFundoEscuro,
          child: Column(
            children: [
              Image.asset(
                'assets/images/banner.png',
                width: double.infinity,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    'HORA DE ABRAÇAR SEU LADO GEEK!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
