import 'package:checkpoint/data/categorys_data.dart';
import 'package:checkpoint/widgets/card_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySectionWidget extends StatelessWidget {
  const CategorySectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          "Categorias",
          style: GoogleFonts.orbitron(
            fontSize: 27,
            fontWeight: .bold,
            color: Color(0xFF0B254B),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.",
            textAlign: .center,
            style: GoogleFonts.poppins(fontSize: 18, color: Color(0xFF5E6E89)),
          ),
        ),
        const SizedBox(height: 20),

        ...categorys.map(
          (category) => CardCategoryWidget(
            nome: category["nome"]!,
            url: category["url"]!,
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
