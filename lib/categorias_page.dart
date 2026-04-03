import 'package:flutter/material.dart';

class CategoriasPage extends StatelessWidget {
  const CategoriasPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color corAzul = Color(0xFF0D0221);

    final List<Map<String, String>> categorias = [
      {'nome': 'Roupas', 'imagem': 'assets/images/camisa.jpeg'},
      {'nome': 'Decoração', 'imagem': 'assets/images/lanche.jpeg'},
      {'nome': 'Canecas', 'imagem': 'assets/images/caneca.jpeg'},
      {'nome': 'Acessórios', 'imagem': 'assets/images/teclado.jpeg'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      child: Column(
        children: [
          //  TÍTULO
          const Text(
            'Categorias',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: corAzul,
              fontFamily: 'FontesTitulo', // FONTE DE TÍTULO
            ),
          ),
          const SizedBox(height: 10),

          // DESCRIÇÃO
          const Text(
            'De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontFamily: 'FontesCorpo', // FONTE DE CORPO
            ),
          ),
          const SizedBox(height: 30),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              childAspectRatio: 1.1,
            ),
            itemCount: categorias.length,
            itemBuilder: (context, index) {
              return CategoriaCard(
                nome: categorias[index]['nome']!,
                imagem: categorias[index]['imagem']!,
              );
            },
          ),
        ],
      ),
    );
  }
}
