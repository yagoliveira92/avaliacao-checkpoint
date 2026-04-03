import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../data/products_data.dart";
import "../widgets/card_produce_widget.dart";

class ProductsSectionWidget extends StatelessWidget {
  const ProductsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "Promos Especiais",
            textAlign: .center,
            style: GoogleFonts.orbitron(fontSize: 28, fontWeight: .bold),
          ),
        ),

        ...products.map((product) => CardProduce(
          nome: product["nome"]!,
          url: product["url"]!,
          valor: product["valor"]!,
        )),
        const SizedBox(height: 25),
        TextButton(
          onPressed: () {},
          child: Text(
            "Ver mais",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: .bold,
              color: Color(0xFF780BF7),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
