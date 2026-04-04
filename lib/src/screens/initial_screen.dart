import 'package:avaliacao_checkpoint/src/screens/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_checkpoint/src/screens/widgets/home_banner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avaliacao_checkpoint/src/screens/widgets/newsletter_section.dart';
import 'package:avaliacao_checkpoint/src/screens/widgets/footer_section.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    // lista de produtos organizada
    final List<Map<String, String>> meusProdutos = [
      {
        'nome': 'Camiseta Capy',
        'preco': '28,00',
        'img': 'assets/images/camisa_capivara.png',
      },
      {
        'nome': 'Mousepad Café',
        'preco': '18,00',
        'img': 'assets/images/mouse_pad_codigo.png',
      },
      {
        'nome': 'Caneca Bug',
        'preco': '28,00',
        'img': 'assets/images/caneca_codigo.png',
      },
      {
        'nome': 'Boné 404',
        'preco': '25,00',
        'img': 'assets/images/bone_404.png',
      },
      {
        'nome': 'Quadro While',
        'preco': '22,00',
        'img': 'assets/images/quadro_codigo.png',
      },
      {
        'nome': 'Copo Vida de Dev',
        'preco': '28,00',
        'img': 'assets/images/copo_termico_mestre.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo_UseDev.png', height: 40),
            const SizedBox(width: 40),
            const Text('Sobre nós'),
            const SizedBox(width: 60),
            const Text('Login'),
          ],
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'O que você procura?',
                suffixIcon: const Icon(Icons.search, color: Colors.black),
                filled: true,
                fillColor: const Color(0xFFEFEFEF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 20,
                ),
              ),
            ),
          ),
        ),
        actions: [
          const Icon(Icons.person_outline),
          const Icon(Icons.shopping_cart_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // a column organiza os filhos (children) um embaixo do outro.
          children: [
            const HomeBanner(),
            const SizedBox(height: 20),
            Text(
              'Promos especiais',
              style: GoogleFonts.orbitron(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF090129),
              ),
            ),
            const SizedBox(height: 10),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: meusProdutos
                  .length, // ele conta quantos itens tem na lista (6)
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.00,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  name: meusProdutos[index]['nome']!,
                  price: meusProdutos[index]['preco']!,
                  imagePath: meusProdutos[index]['img']!,
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    // Isso aqui serviria para levar a pessoa que cliclou para uma pagina nova com todos os produtos
                    // mas por enquanto não faz nada
                    print('Clicou em Ver mais');
                  },
                  child: Text(
                    'Ver mais',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF090129),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            
            const NewsletterSection(), // adiciona a newsletter
            const FooterSection(), // adiciona o rodapé
            Container(
              color: const Color(0xFFEFEFEF),
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Desenvolvido por Harry, Projeto fictício sem fins comerciais.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ], // Fechamento do children da Column
        ),
      ),
    );
  }
}
