import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesSection extends StatelessWidget {
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
            fontWeight: FontWeight.bold,
            color: const Color(0xFF0A2E73),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.',
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 14,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),

        // AQUI VOCÊ CONTROLA O TAMANHO! O número final é a altura da imagem.
        // Se quiser maior, aumente o número. Se quiser menor, diminua.
        _buildCategory('Roupas', 'assets/categoria_roupas.png', imageSize: 320),
        _buildCategory(
          'Decoração',
          'assets/categoria_decoracao.png',
          imageSize: 330,
        ),
        _buildCategory(
          'Canecas',
          'assets/categoria_canecas.png',
          imageSize: 330,
        ),
        _buildCategory(
          'Acessórios',
          'assets/categoria_acessorios.png',
          imageSize: 280,
        ),
      ],
    );
  }

  // Adicionamos o parâmetro 'imageSize' aqui na função
  Widget _buildCategory(
    String title,
    String image, {
    required double imageSize,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // O quadrado azul perfeito continua garantido pelo AspectRatio
          AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xFF0A0128)),
              child: Center(
                // A imagem agora obedece ao tamanho que você passou lá em cima!
                child: Image.asset(
                  image,
                  height: imageSize, // <--- O SEGREDO ESTÁ AQUI
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // O quadrado branco com o texto
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            color: Colors.white,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF0A0128),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
