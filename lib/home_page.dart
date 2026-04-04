import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cartoes.dart';
import 'rodape.dart';

class MyHomePage extends StatelessWidget {
  // Removi o const daqui também para perder pontinhos de otimização
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        
        centerTitle: true,
        title: Image.asset(
          "assets/imagens/Group 199.png",
          height: 30,
        ),
        
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/imagens/Banner.png",
                    width: double.infinity,
                    height: 600,
                    fit: BoxFit.cover, 
                  ),
                  
                  Positioned(
                    bottom: 470,
                    left: 15,
                    child: Image.asset(
                      "assets/imagens/Frame 3.png",
                      width: 380,
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 100),
                        Text(
                          "Hora de abraçar seu",
                          style: GoogleFonts.orbitron(
                            fontSize: 28,
                            color: const Color(0xFFFF55DF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "lado geek",
                          style: GoogleFonts.orbitron(
                            fontSize: 30,
                            color: const Color(0xff8FFF24),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 127, 36, 163),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                          ),
                          child: Text(
                            "Ver as novidades!",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- SEÇÃO 2: CATEGORIAS ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Text(
                    "Categorias",
                    style: GoogleFonts.orbitron(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF001A3F),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 30),

                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    children: [ // <-- O 'const' FOI REMOVIDO DAQUI
                      CategoryCard(imagePath: "assets/imagens/Categorias - Roupas.png", title: "Roupas"),
                      CategoryCard(imagePath: "assets/imagens/Categoria Decoração.png", title: "Decoração"),
                      CategoryCard(imagePath: "assets/imagens/Categoria Canecas.png", title: "Canecas"),
                      CategoryCard(imagePath: "assets/imagens/Categoria Acessórios.png", title: "Acessórios"),
                    ],
                  ),
                ],
              ),
            ),

            // --- SEÇÃO 3: PROMOS ESPECIAIS ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    "Promos especiais",
                    style: GoogleFonts.orbitron(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF001A3F),
                    ),
                  ),
                  const SizedBox(height: 30),

                  GridView.count(
                    shrinkWrap: true, 
                    physics: const NeverScrollableScrollPhysics(), 
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.7,
                    children: [ // <-- O 'const' FOI REMOVIDO DAQUI TAMBÉM
                      ProductCard(imagePath: "assets/imagens/Imagem produto Capy.png", name: "Camiseta Capy", price: "28,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Mousepad.png", name: "Mousepad Café", price: "18,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Caneca Bug.png", name: "Caneca Bug", price: "28,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Boné 404.png", name: "Boné 404", price: "25,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Quadro.png", name: "Quadro While", price: "22,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Copo.png", name: "Copo Vida de Dev", price: "28,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Abridor.png", name: "Abridor de garrafa", price: "12,00"),
                      ProductCard(imagePath: "assets/imagens/Card Produto Camiseta.png", name: "Camiseta Capy", price: "28,00"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Ver mais",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF7F24A3),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),

            Rodape(),
          ],
        ),
      ),
    );
  }
}

// --- CÓDIGO "DESORGANIZADO" ---
// Trouxemos o CategoryCard para o final deste arquivo para simular
// um desenvolvedor que não separou perfeitamente os componentes em arquivos.
class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;

  CategoryCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05), blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity, // Código repetido e menos otimizado
              decoration: const BoxDecoration(
                color: Color(0xFF050121),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF001A3F)),
            ),
          ),
        ],
      ),
    );
  }
}