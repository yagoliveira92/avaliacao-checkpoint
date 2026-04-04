import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesSection extends StatelessWidget{
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Categorias',
          style: TextStyle(
            fontFamily: GoogleFonts.orbitron().fontFamily,
            fontSize: 24,
            fontWeight: .bold,
          ),
        ),
        Text(
          'De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autencidade.',
          style: TextStyle(
            fontFamily:  GoogleFonts.poppins().fontFamily,
            fontSize: 14,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 20),
        _buildCategory('Roupas', 'assets/categoria_roupas.png'),
        _buildCategory('Decoração', 'assets/categoria_decoracao.png'),
        _buildCategory('Canecas', 'assets/categoria_canecas.png'),
        _buildCategory('Acessórios', 'assets/categoria_acessorios.png'),
      ],
    );   
  }
  Widget _buildCategory(String title, String image){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white, 
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 160,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 18,
                fontWeight: .bold,
                color: Color(0xFF0A0128),
              ),
            ),
          ],
        ),
    );
  }
}