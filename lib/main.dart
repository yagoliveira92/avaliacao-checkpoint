import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    print("Clicou!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Center(
            child: Image.asset(
              "assets/imagens/Group 199.png",
              height: 30,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== BANNER =====
            Stack(
              children: [
                Image.asset(
                  "assets/imagens/Banner.png",
                  width: double.infinity,
                  height: 600,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 220,
                  left: 15,
                  child: Image.asset(
                    "assets/imagens/Frame 3.png",
                    width: 380,
                    fit: BoxFit.contain,
                  ),
                ),

                Positioned(
                  top: 395,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        "Hora de abraçar seu",
                        style: GoogleFonts.orbitron(
                          fontSize: 30,
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
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                        ),
                        child: Text(
                          "Ver as novidades!",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Text(
                    "Promos especiais",
                    style: GoogleFonts.orbitron(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                    itemBuilder: (context, index) {
                      List<String> imagens = [
                        "assets/imagens/capibaba.png",
                        "assets/imagens/cartao.png",
                      ];

                      return produtoCard(
                        imagens[index % imagens.length], // 👈 alterna imagens
                        "Produto ${index + 1}",
                        "R\$ ${(index + 1) * 10},00",
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget produtoCard(String imagem, String nome, String preco) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(imagem, fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Text(
              nome,
              style: GoogleFonts.orbitron(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              preco,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
