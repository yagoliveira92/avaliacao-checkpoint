import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCardWidget extends StatelessWidget {
  final String name;
  final String url;
  final String preco;

  const ProductCardWidget({
    required this.name,
    required this.url,
    required this.preco,
    super.key,
  });

  static const List<Map<String, String>> products = [
    {'name': 'Action Figure Thanos', 'url': 'https://placehold.co/600x600.png', 'preco': '150,00'},
    {'name': 'Camiseta Gamer', 'url': 'https://placehold.co/600x600.png', 'preco': '89,90'},
    {'name': 'Mousepad Geek', 'url': 'https://placehold.co/600x600.png', 'preco': '49,90'},
    {'name': 'Caneca Dev', 'url': 'https://placehold.co/600x600.png', 'preco': '39,90'},
    {'name': 'Boné Nerd', 'url': 'https://placehold.co/600x600.png', 'preco': '59,90'},
    {'name': 'Mochila Hacker', 'url': 'https://placehold.co/600x600.png', 'preco': '129,90'},
  ];

  static Widget buildList() {
    return Column(
      children: [
        Text(
          'Promos Especiais',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.orbitron().fontFamily,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) => ProductCardWidget(
            name: products[index]['name']!,
            url: products[index]['url']!,
            preco: products[index]['preco']!,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(url, height: 200, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              preco,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.orbitron().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}