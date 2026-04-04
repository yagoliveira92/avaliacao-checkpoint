import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;

  // Removendo o 'const' para perder alguns pontinhos de otimização
  CategoryCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05), blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity, // Força a ocupar toda a largura (redundante)
              decoration: const BoxDecoration(
                color: Color(0xFF050121),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: ClipRRect(
                // Corta a imagem novamente (gasto extra de processamento)
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF001A3F)),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  // Sem o 'const' aqui também
  ProductCard({super.key, required this.imagePath, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity, // Voltando com o Container pesado em vez do Padding
              padding: const EdgeInsets.all(10),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          Container(
            width: double.infinity, // Repetindo a largura fixa
            padding: const EdgeInsets.all(12),
            color: const Color(0xFFF0F0F0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.orbitron(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF001A3F)),
                ),
                const SizedBox(height: 5), // Dá um pequeno espaço vertical
                Text(
                  "R\$ $price",
                  style: GoogleFonts.orbitron(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF001A3F)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}