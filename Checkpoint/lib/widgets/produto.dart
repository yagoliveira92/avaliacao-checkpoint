import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class produto_Widget extends StatelessWidget {
  final String imagemPath;
  final String titulo;
  final String preco;

  const produto_Widget({
    super.key,
    required this.imagemPath,
    required this.titulo,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF00D4).withOpacity(0.05),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(imagemPath, height: 400, fit: BoxFit.contain),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFFEFEFEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: GoogleFonts.orbitron(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF090129),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  preco,
                  style: GoogleFonts.poppins(
                    fontSize: 19,
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
