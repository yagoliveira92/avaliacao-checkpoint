import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget { // Aqui estão as "peças" que o card precisa para ser montado
  
  final String name;
  final String price;
  final String imagePath;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1F1F1), 
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(  // Imagem do Produto 
            height: 150,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
          
          
          Padding(  // Textos (Nome e Preço)
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.orbitron(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF090129),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF090129),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}