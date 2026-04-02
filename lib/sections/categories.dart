import 'package:flutter/material.dart';
import '../widgets/categorias.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 35),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 1,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              const CategoryCard(
                imageUrl: 'assets/images/roupas.png',
                title: "Roupas",
                border: true,
              ),
              const CategoryCard(
                imageUrl: 'assets/images/hamburguer.png',
                title: "Decoração",
                border: true,
              ),
              const CategoryCard(
                imageUrl: 'assets/images/caneca_capy.png',
                title: "Canecas",
                border: true,
              ),
              const CategoryCard(
                imageUrl: 'assets/images/teclado.png',
                title: "Acessórios",
                border: true,
              ),
            ],
          ),

          const SizedBox(height: 40),
          const Text(
            "Promos especiais",
            style: TextStyle(
              fontFamily: 'Orbitron',
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0D0221),
            ),
          ),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 1,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              const CategoryCard(
                imageUrl: 'assets/images/capy_mobile.png',
                title: "Camiseta Capy",
                price: "28,00",
              ),
              const CategoryCard(
                imageUrl: 'assets/images/mousepad_mobile.png',
                title: "Mousepad Café",
                price: "18,00",
              ),
              const CategoryCard(
                imageUrl: 'assets/images/bug_mobile.png',
                title: "Caneca Bug",
                price: "28,00",
              ),
              const CategoryCard(
                imageUrl: 'assets/images/bone_mobile.png',
                title: "Boné 404",
                price: "25,00",
              ),
              CategoryCard(
                  imageUrl: 'assets/images/quadro_mobile.png',
                  title: "Quadro While",
                  price: "22,00"
              ),
              CategoryCard(
                  imageUrl: 'assets/images/copo_mobile.png',
                  title: "Copo Vida de Dev",
                  price: "28,00"
              ),
              CategoryCard(
                  imageUrl: 'assets/images/abridor_mobile.png',
                  title: "Abridor de garrafa",
                  price: "12,00"
              ),
              CategoryCard(
                  imageUrl: 'assets/images/camiseta_mobile.png',
                  title: "Camiseta Estágipos",
                  price: "35,00",
                  border: true
              ),
            ],
          ),
          const SizedBox(height: 24),

          const Text(
            "Ver mais",
            style: TextStyle(color: Color(0xFF780BF7),
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF780BF7),
                decorationThickness: 2),
          ),
          const SizedBox(height: 24),

        ],
      ),
    );
  }
}