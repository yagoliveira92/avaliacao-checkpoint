import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class CardCategoryWidget extends StatelessWidget {
  const CardCategoryWidget({
    required this.nome,
    required this.url,

    super.key
  });

  final String nome;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: .all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Image.asset(url, height: 275, width: double.infinity, fit: .cover),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              nome,
              textAlign: .center,
              style: GoogleFonts.orbitron(fontSize: 27, fontWeight: .bold),
            ),
          ),
        ],
      ),
    );
  }
}
