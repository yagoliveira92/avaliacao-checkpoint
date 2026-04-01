import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors
          .white, // Deixei o fundo branco para combinar com o topo da imagem
      body: Column(
        children: [
          _barradeInformacoes(), // Chama a barra superior
          // Aqui embaixo ficará o restante do seu site
        ],
      ),
    );
  }

  Widget _barradeInformacoes() {
    return Container(
      color: Colors.white, // Fundo branco da barra
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1. Logotipo USE DEV
          const Text(
            'USE\nDEV',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Color(0xFF0A0222), // Cor preta/azul escura
              height: 0.9,
            ),
          ),

          const SizedBox(width: 40),

          // 2. Campo de Busca (O que você procura?)
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200], // Fundo cinza clarinho
                borderRadius: BorderRadius.circular(25), // Borda redonda
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'O que você procura?',
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder
                            .none, // Tira a linha preta padrão do campo
                        isDense: true,
                      ),
                    ),
                  ),
                  Icon(Icons.search, color: Colors.black54, size: 24),
                ],
              ),
            ),
          ),

          const SizedBox(width: 40),

          // 3. Seção do lado direito (Login + Icones)
          Row(
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF1E1E2C),
                ),
              ),
              const SizedBox(width: 20),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  size: 28,
                  color: Color(0xFF1E1E2C),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 28,
                  color: Color(0xFF1E1E2C),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
