import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetProduto extends StatelessWidget {
  final String imagem;
  final String nome;
  final String preco;

  const WidgetProduto({
    super.key,
    required this.imagem,
    required this.nome,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),

      //Imagem
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            spreadRadius: 1,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(imagem, height: 400, fit: BoxFit.cover),
          ),

          //nome e preço
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFEFEFEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: GoogleFonts.orbitron(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF090129),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  preco,
                  style: GoogleFonts.poppins(
                    fontSize: 31,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF16162E),
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
