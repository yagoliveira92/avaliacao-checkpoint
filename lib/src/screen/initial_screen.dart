import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev_uninassau/src/widgets/footer_widget.dart';
import '../widgets/hero_section_widget.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/subscription_section_widget.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  InitialScreenState createState() => InitialScreenState();
}

class InitialScreenState extends State<InitialScreen> {
  final List<Map<String, String>> meusProdutos = [
    {
      'nome': 'Camiseta Capy',
      'url': 'assets/produtocapy.png',
      'preco': 'R\$ 28,00'
    },
    {
      'nome': 'Mouse pad Café',
      'url': 'assets/produtomousepad.png',
      'preco': 'R\$ 18,00'
    },
    {
      'nome': 'Caneca Bug',
      'url': 'assets/produtocanecabug.png', 
      'preco': 'R\$ 28,00'
    },
    {
      'nome': 'Boné 404',
      'url': 'assets/produtobone.png',
      'preco': 'R\$ 25,00'
    },
     {
      'nome': 'Quadro While',
      'url': 'assets/produtoquadro.png',
      'preco': 'R\$ 22,00'
    },
    {
      'nome': 'Copo Vida de Dev',
      'url': 'assets/produtocopodev.png',
      'preco': 'R\$ 28,00'
    },
    {
      'nome': 'Abridor de garrafa',
      'url': 'assets/produtoabridor.png', 
      'preco': 'R\$ 12,00'
    },
    {
      'nome': 'Camisa de Estágios',
      'url': 'assets/produtocamisaestagio.png',
      'preco': 'R\$ 35,00'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 28.0),
        title: Image.asset('assets/Logo.png', height: 40),
        centerTitle: true,
        actions: [
          Icon(Icons.person_outline, size: 30.0),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 30.0),
          SizedBox(width: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
         Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'O que você procura?',
                hintStyle: TextStyle(color: Colors.grey.shade500),
                suffixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true, 
                fillColor: Colors.grey.shade200,
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0), 
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
            
            HeroSectionWidget(), 
            SizedBox(height: 20),
            Text(
              'Promos Especiais',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 31,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  itemCount: meusProdutos.length, 
  itemBuilder: (context, index) {
    return ProductCardWidgets(
      nome: meusProdutos[index]['nome']!,
      url: meusProdutos[index]['url']!,
      preco: meusProdutos[index]['preco']!,
    );
  },
), // ListView.builder
const SizedBox(height: 15),
        TextButton(
          onPressed: () {},
          child: Text(
            'Ver mais',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xFF780BF7),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: const Color(0xFF780BF7),
            ),
          ),
        ),
        const SizedBox(height: 40),
        const SubscriptionSectionWidget(),
        const FooterWidget(),
      ], 
        ),
      ),
    );
  }
}