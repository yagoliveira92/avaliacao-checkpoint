import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartaoProdutoDetalhe extends StatelessWidget {
  final String fotoUrl, titulo, precoFinal;

  const CartaoProdutoDetalhe({
    super.key,
    required this.fotoUrl,
    required this.titulo,
    required this.precoFinal,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffefefef),
      margin: const EdgeInsets.all(20),
      shape: const RoundedRectangleBorder(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(fotoUrl, fit: BoxFit.cover, height: 200),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text(
              titulo,
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              precoFinal,
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 31,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PrimaryPage extends StatelessWidget {
  PrimaryPage({super.key});

  final List<Map<String, String>> p = [
    {'n': 'Produto 1', 'v': '100,00', 'i': 'https://placehold.co/600x600/png'},
    {'n': 'Produto 2', 'v': '200,00', 'i': 'https://placehold.co/600x600/png'},
    {'n': 'Produto 3', 'v': '300,00', 'i': 'https://placehold.co/600x600/png'},
    {'n': 'Produto 4', 'v': '400,00', 'i': 'https://placehold.co/600x600/png'},
    {'n': 'Produto 5', 'v': '500,00', 'i': 'https://placehold.co/600x600/png'},
  ];

  @override
  Widget build(BuildContext context) => Column(
    children: p
        .map(
          (e) => CartaoProdutoDetalhe(
            titulo: e['n']!,
            precoFinal: e['v']!,
            fotoUrl: e['i']!,
          ),
        )
        .toList(),
  );
}
