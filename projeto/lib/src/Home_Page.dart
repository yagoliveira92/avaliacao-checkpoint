import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold é a estrutura básica da página (tela)
    return Scaffold(
      backgroundColor: Colors.white, // Cor de fundo de toda a tela
      // O body é o corpo da página. Usamos Column para empilhar itens de cima para baixo
      body: Column(
        children: [
          // 1º item: O cabeçalho / menu da nossa loja (Logo, botões, barra de pesquisa)
          _barradeInformacoes(),

          // 2º item: A imagem do banner
          // Agora usamos um tamanho fixo (height) em vez do Expanded
                    // 2º item: A imagem do banner com outra por cima
          Container(
            width: double.infinity,
            height: 300,
            child: Stack( // <--- O Stack permite colocar uma imagem sobre a outra
              children: [
                // 1ª Camada (O Fundo): A imagem principal do Banner
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/Banner.png',
                    fit: BoxFit.cover,
                  ),
                ),
                
                // 2ª Camada (A Frente): A sua nova imagem por cima do Banner
                Align(
                  alignment: Alignment.center, // Posição que ela vai ficar (aqui está no centro)
                  child: Image.asset(
                    'assets/images/Hero.png', // <--- Colocar o nome da sua nova imagem
                    height: 200, // Controle o tamanho só dessa imagenzinha de cima
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Função que cria apenas a parte do cabeçalho
  Widget _barradeInformacoes() {
    // Um Container atua como uma "caixa" (box) para agrupar outros widgets e aplicar fundo e margens
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 15,
      ), // Margens laterais (40) e verticais (15)
      // Essa "Coluna" abriga duas linhas principais: "Logo/Menu" e "Barra de Pesquisa"
      child: Column(
        children: [
          // Row exibe as coisas num formato horizontal, um ao lado do outro
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Espalha os itens horizontalmente (esquerda pra direita)
            children: [
              // Logo da sua loja
              Image.asset(
                'assets/images/image.png',
                height: 40, // Altura da logo
                fit: BoxFit.contain,
              ),

              // O Spacer atua como uma "mola" empurrando tudo para a esquerda e direita
              const Spacer(),

              // Botão de texto
              const Text(
                'Sobre nós',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontWeight: FontWeight.w500, // Espessura da fonte
                  fontSize: 16, // Tamanho do texto
                ),
              ),

              // Espaçamento vazio ("SizedBox") entre os textos
              const SizedBox(width: 40),

              // Agrupa 'Login' e Ícones (usuário e carrinho) juntos um do lado do outro
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

                  // Botão de ação (neste caso, a carinha do usuário)
                  IconButton(
                    onPressed:
                        () {}, // O que fará ao ser clicado (atualmente nada)
                    icon: const Icon(
                      Icons.person_outline,
                      size: 28,
                      color: Color(0xFF1E1E2C),
                    ),
                  ),

                  // Botão de ação (carrinho de compra)
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

          // Espaço vazio entre o menu e a barra de pesquisa
          const SizedBox(height: 20),

          // A BARRA DE PESQUISA
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200], // Cinza bem clarinho
              borderRadius: BorderRadius.circular(
                25,
              ), // Bordas redondas nas pontas
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),

            // Uma linha dentro do container segurando o input de digitação e a lupinha
            child: const Row(
              children: [
                // "Expanded" diz pro botão crescer e ocupar grande parte dessa "Row" horizontal
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você procura?', // Placeholder
                      hintStyle: TextStyle(color: Colors.black54),
                      border:
                          InputBorder.none, // Remove a linha azul feia embaixo
                      isDense: true,
                    ),
                  ),
                ),

                // Ícone visual da lupinha
                Icon(Icons.search, color: Colors.black54, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
