import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCardWidgets extends StatelessWidget {
  const ProductCardWidgets({
    super.key,
    required this.nome,
    required this.url,
    required this.preco,
  });

  final String nome;
  final String url;
  final String preco;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: .all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment:
            .stretch, //eixo oposto ao principal, ocupa o maximo de espaço que puder
        children: [
          Image.network(url, height: 200, width: double.infinity, fit: .cover),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              nome,
              style: TextStyle(
                fontSize: 25,
                fontWeight: .bold,
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              preco,
              style: TextStyle(
                fontSize: 31,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
