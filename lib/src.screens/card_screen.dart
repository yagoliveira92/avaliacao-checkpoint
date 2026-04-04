import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCardWidget extends StatelessWidget {
  final String url;
  final String title;
  final String price;

  const ProductCardWidget({
    super.key,
    required this.url,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      color: const Color(0xFFEFEFEF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Image.network(
            url,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              price,
              style: TextStyle(
                fontSize: 31,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Map<String, String>> products = [
    {
      'title': 'Penico do vrum vrum',
      'price': '170,00',
      'url': 'assets/images/penico.jpeg',
    },
    {
      'title': 'Máscara do Batman',
      'price': '85,50',
      'url': 'assets/images/mascara.jpeg',
    },
    {
      'title': 'Escudo do Capitão',
      'price': '250,00',
      'url': 'assets/images/escudo.jpeg',
    },
    {
      'title': 'Martelo do Thor',
      'price': '199,90',
      'url': 'assets/images/martelo.jpeg',
    },
    {
      'title': 'Laço da Verdade',
      'price': '120,00',
      'url': 'assets/images/laco.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return ProductCardWidget(
          title: product['title']!,
          price: product['price']!,
          url: product['url']!,
        );
      },
    );
  }
}
