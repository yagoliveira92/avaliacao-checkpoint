import 'package:flutter/material.dart';

import '../../product/product.dart';
import '../../../shared/app_components.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  static const promos = [
    {
      "title": "Camiseta Capy",
      "price": "28,00",
      "img": "assets/images/capy_mobile.png",
      "description": "Camiseta 100% algodão com estampa de capivara dev.",
      "options": {
        "optionsLabel": "Escolha a cor do tecido",
        "choices": ["Bege", "Branca", "Preta"]
      },
      "others": {
        "Tamanho": ["PP", "P", "M", "G", "GG", "XG"]
      }
    },
    {
      "title": "Mousepad Café",
      "price": "18,00",
      "img": "assets/images/mousepad_mobile.png",
      "description": "Mousepad emborrachado Speed antiderrapante.",
      "options": {
        "optionsLabel": "Escolha o acabamento",
        "choices": ["Borda Costurada", "Corte Simples"]
      },
      "others": {
        "Tamanho": ["Médio (30x25cm)", "Gamer (70x30cm)", "Desktop (90x40cm)"]
      }
    },
    {
      "title": "Caneca Bug",
      "price": "28,00",
      "img": "assets/images/bug_mobile.png",
      "description": "Caneca de cerâmica 325ml resistente a micro-ondas.",
      "options": {
        "optionsLabel": "Tipo da Caneca",
        "choices": ["Cerâmica Branca", "Alça Preta", "Interior Colorido"]
      },
      "others": {
        "Capacidade": ["325ml", "450ml"]
      }
    },
    {
      "title": "Boné 404",
      "price": "25,00",
      "img": "assets/images/bone_mobile.png",
      "description": "Boné aba curva com bordado de alta qualidade.",
      "options": {
        "optionsLabel": "Cor do Boné",
        "choices": ["Preto", "Azul Marinho", "Cinza"]
      },
      "others": {
        "Fecho": ["Snapback", "Strapback"]
      }
    },
    {
      "title": "Quadro While",
      "price": "22,00",
      "img": "assets/images/quadro_mobile.png",
      "description": "Quadro decorativo com moldura em madeira reflorestada.",
      "options": {
        "optionsLabel": "Cor da Moldura",
        "choices": ["Preta", "Madeira Clara", "Branca"]
      },
      "others": {
        "Dimensões": ["A4 (21x30cm)", "A3 (30x42cm)", "A2 (42x60cm)"]
      }
    },
    {
      "title": "Copo Vida de Dev",
      "price": "28,00",
      "img": "assets/images/copo_mobile.png",
      "description": "Copo térmico com tampa para manter seu café quente.",
      "options": {
        "optionsLabel": "Cor do Copo",
        "choices": ["Matte Black", "Aço Escovado"]
      },
      "others": {
        "Material": ["Aço Inox", "Plástico BPA Free"]
      }
    },
    {
      "title": "Abridor de garrafa",
      "price": "12,00",
      "img": "assets/images/abridor_mobile.png",
      "description": "Abridor de metal magnético para sua geladeira.",
      "options": {
        "optionsLabel": "Estampa",
        "choices": ["Logotipo Root", "Sintaxe Error"]
      },
      "others": {
        "Tipo": ["Magnético de Geladeira", "De Bolso"]
      }
    },
    {
      "title": "Camiseta Estágipos",
      "price": "35,00",
      "img": "assets/images/camiseta_mobile.png",
      "description": "Camiseta premium para quem sobreviveu ao estágio.",
      "options": {
        "optionsLabel": "Cor da Estampa",
        "choices": ["Verde Matrix", "Branco Minimal"]
      },
      "others": {
        "Modelagem": ["Unissex", "Babylook", "Oversized"]
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _sectionTitle("Promos especiais"),
          const SizedBox(height: 12),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: promos
                .map(
                  (p) => CategoryCard(
                imageUrl: p['img'] as String,
                title: p['title'] as String,
                price: p['price'] as String,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductPage(
                        title: p['title'] as String,
                        img: p['img'] as String,
                        price: p['price'] as String,
                        description: p['description'] as String,
                        options: p['options'] as Map<String, Object>?,
                        others: p['others'] as Map<String, List<String>>?,
                      ),
                    ),
                  );
                },
              ),
            )
                .toList(),
          ),

          const SizedBox(height: 24),

          GestureDetector(
            onTap: () {},
            child: const Text(
              "Ver mais",
              style: TextStyle(
                color: Color(0xFF780BF7),
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF780BF7),
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}