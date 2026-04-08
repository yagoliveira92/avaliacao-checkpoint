class Products {

  static const categories = [
    {'title': 'Roupas', 'img': 'assets/images/roupas.png'},
    {'title': 'Decoração', 'img': 'assets/images/hamburguer.png'},
    {'title': 'Canecas', 'img': 'assets/images/caneca_capy.png'},
    {'title': 'Acessórios', 'img': 'assets/images/teclado.png'},
  ];
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
}