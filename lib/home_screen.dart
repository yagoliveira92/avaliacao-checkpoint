import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_screen.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomNavbar(),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 1024) {
                  return const HeroSectionDesktop();
                } else if (constraints.maxWidth >= 600) {
                  return const HeroSectionTablet();
                } else {
                  return const HeroSectionMobile();
                }
              },
            ),
            const CategoriesSection(),
            const PromosSection(),
            NewsletterSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024) {
          return _buildDesktopNavbar(context);
        } else if (constraints.maxWidth >= 600) {
          return _buildTabletNavbar(context);
        } else {
          return _buildMobileNavbar(context);
        }
      },
    );
  }

  Widget _buildMobileNavbar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu, color: Color(0xFF090129), size: 28),
              Image.asset(
                'assets/Logo e favicon/PNG/Logo UseDev.png',
                height: 40,
                fit: BoxFit.contain,
              ),
              Row(
                children: [
                  const Icon(Icons.person_outline, color: Color(0xFF090129), size: 28),
                  const SizedBox(width: 12),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
                    },
                    icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF090129), size: 28),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFEFEFEF),
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você procura?',
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xFF090129),
                        fontSize: 16,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.search, color: Color(0xFF090129), size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabletNavbar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/Logo e favicon/PNG/Logo UseDev.png',
            height: 40,
            fit: BoxFit.contain,
          ),
          Text(
            'Sobre nós',
            style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF090129)),
          ),
          Container(
            width: 300,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFEFEFEF),
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você procura?',
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xFF090129),
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.search, color: Color(0xFF090129), size: 20),
              ],
            ),
          ),
          Text(
            'Login',
            style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF090129)),
          ),
          Row(
            children: [
              const Icon(Icons.person_outline, color: Color(0xFF090129), size: 28),
              const SizedBox(width: 12),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
                },
                icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF090129), size: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDesktopNavbar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            'assets/Logo e favicon/PNG/Logo UseDev.png',
            height: 40,
            fit: BoxFit.contain,
          ),
          const Spacer(flex: 2),
          Text(
            'Sobre nós',
            style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF090129)),
          ),
          const Spacer(flex: 3),
          Container(
            width: 450,
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFEFEFEF),
              borderRadius: BorderRadius.circular(27),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você procura?',
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0xFF090129),
                        fontSize: 16,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.search, color: Color(0xFF090129), size: 24),
              ],
            ),
          ),
          const Spacer(flex: 3),
          Text(
            'Login',
            style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF090129)),
          ),
          const SizedBox(width: 30),
          const Icon(Icons.person_outline, color: Color(0xFF090129), size: 28),
          const SizedBox(width: 15),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF090129), size: 28),
          ),
        ],
      ),
    );
  }
}

class HeroSectionMobile extends StatelessWidget {
  const HeroSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF090129),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Imagens/Banner seções Mobile.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Image.asset(
                    'assets/Imagens/Imagem Hero Mobile.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      height: 1.1,
                      color: const Color(0xFFFF55DF),
                    ),
                    children: [
                      const TextSpan(text: 'Hora de\nabraçar\nseu '),
                      TextSpan(
                        text: 'lado\ngeek!',
                        style: TextStyle(
                          color: const Color(0xFF8FFF24),
                          shadows: [
                            Shadow(
                              blurRadius: 15,
                              color: const Color(0xFF8FFF24).withOpacity(0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF780BF7),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Text(
                      'Ver as novidades!',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSectionTablet extends StatelessWidget {
  const HeroSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF090129),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Imagens/Banner seções tablet.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/Imagens/Imagem Hero.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.orbitron(
                      fontSize: 64,
                      fontWeight: FontWeight.w900,
                      height: 1.1,
                      color: const Color(0xFFFF55DF),
                    ),
                    children: [
                      const TextSpan(text: 'Hora de abraçar seu '),
                      TextSpan(
                        text: 'lado geek!',
                        style: TextStyle(
                          color: const Color(0xFF8FFF24),
                          shadows: [
                            Shadow(
                              blurRadius: 20,
                              color: const Color(0xFF8FFF24).withOpacity(0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF780BF7),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: Text(
                    'Ver as novidades!',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSectionDesktop extends StatelessWidget {
  const HeroSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      color: const Color(0xFF090129),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Imagens/Banner seções.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/Imagens/Imagem Hero.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.orbitron(
                            fontSize: 72,
                            fontWeight: FontWeight.w900,
                            height: 1.1,
                            color: const Color(0xFFFF55DF),
                          ),
                          children: [
                            const TextSpan(text: 'Hora de\nabraçar seu\n'),
                            TextSpan(
                              text: 'lado geek!',
                              style: TextStyle(
                                color: const Color(0xFF8FFF24),
                                shadows: [
                                  Shadow(
                                    blurRadius: 25,
                                    color: const Color(0xFF8FFF24).withOpacity(0.8),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF780BF7),
                          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Text(
                          'Ver as novidades!',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;
        bool isTablet = constraints.maxWidth >= 600 && constraints.maxWidth < 1024;
        String deviceFolder = isMobile ? 'Mobile' : (isTablet ? 'Tablet' : 'Desktop');

        return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : (isTablet ? 40 : 80),
            vertical: 40,
          ),
          child: Column(
            children: [
              Text(
                'Categorias',
                style: GoogleFonts.orbitron(
                  fontSize: isMobile ? 24 : 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF090129),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: isMobile ? 14 : 16,
                  color: const Color(0xFF090129).withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 40),
              if (isMobile)
                Column(
                  children: [
                    _buildCategoryCard('Roupas', 'Categorias - Roupas.png', deviceFolder, 1.5),
                    const SizedBox(height: 20),
                    _buildCategoryCard('Decoração', 'Categoria Decoração.png', deviceFolder, 1.5),
                    const SizedBox(height: 20),
                    _buildCategoryCard('Canecas', 'Categoria Canecas.png', deviceFolder, 1.5),
                    const SizedBox(height: 20),
                    _buildCategoryCard('Acessórios', 'Categoria Acessórios.png', deviceFolder, 1.5),
                  ],
                )
              else
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: _buildCategoryCard('Roupas', 'Categorias - Roupas.png', deviceFolder, 2.5),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: _buildCategoryCard('Decoração', 'Categoria Decoração.png', deviceFolder, 1.25),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: _buildCategoryCard('Canecas', 'Categoria Canecas.png', deviceFolder, 1.25),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 2,
                          child: _buildCategoryCard('Acessórios', 'Categoria Acessórios.png', deviceFolder, 2.5),
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCategoryCard(String name, String fileName, String folder, double imageAspect) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: imageAspect,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF090129),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.asset(
                  'assets/Imagens/Categorias/$folder/$fileName',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF090129),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PromosSection extends StatelessWidget {
  const PromosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        bool isMobile = width < 600;
        bool isTablet = width >= 600 && width < 1024;

        String deviceFolder = isMobile ? 'Mobile' : 'Desktop e Tablet';

        final List<Map<String, String>> products = isMobile
          ? [
              {'name': 'Camiseta Capy', 'price': '28,00', 'file': 'Imagem produto Capy Mobile.png', 'desc': 'A queridinha dos devs. Algodão premium com a mascote mais relaxada da TI.'},
              {'name': 'Mousepad Café', 'price': '18,00', 'file': 'Imagem produto Mousepad Mobile.png', 'desc': 'Deslize perfeito para o seu mouse e proteção para sua mesa com estilo cafeinado.'},
              {'name': 'Caneca Bug', 'price': '28,00', 'file': 'Imagem produto Caneca Bug Mobile.png', 'desc': 'Para tomar aquele café enquanto caça bugs que não deveriam existir.'},
              {'name': 'Boné 404', 'price': '25,00', 'file': 'Imagem produto Boné 404 Mobile.png', 'desc': 'Estilo encontrado, erro 404. Proteção solar com a cara do front-end.'},
              {'name': 'Quadro While', 'price': '22,00', 'file': 'Imagem produto Quadro Mobile.png', 'desc': 'Loop infinito de bom gosto para decorar o seu setup de trabalho.'},
              {'name': 'Copo Vida de Dev', 'price': '28,00', 'file': 'Imagem produto Copo Mobile.png', 'desc': 'Mantenha sua hidratação em dia entre um commit e outro.'},
              {'name': 'Abridor de garrafa', 'price': '12,00', 'file': 'Imagem produto Abridor Mobile.png', 'desc': 'A ferramenta definitiva para o happy hour pós-deploy.'},
              {'name': 'Camiseta Estágios', 'price': '35,00', 'file': 'Imagem produto Camiseta Mobile.png', 'desc': 'As 5 fases do luto, ou melhor, as 5 fases de um bug no código.'},
            ]
          : [
              {'name': 'Camiseta Capy', 'price': '28,00', 'file': 'Card Produto Camiseta.png', 'desc': 'A queridinha dos devs. Algodão premium com a mascote mais relaxada da TI.'},
              {'name': 'Mousepad Café', 'price': '18,00', 'file': 'Card Produto Mousepad.png', 'desc': 'Deslize perfeito para o seu mouse e proteção para sua mesa com estilo cafeinado.'},
              {'name': 'Caneca Bug', 'price': '28,00', 'file': 'Card Produto Caneca Bug.png', 'desc': 'Para tomar aquele café enquanto caça bugs que não deveriam existir.'},
              {'name': 'Boné 404', 'price': '25,00', 'file': 'Card Produto Boné 404.png', 'desc': 'Estilo encontrado, erro 404. Proteção solar com a cara do front-end.'},
              {'name': 'Quadro While', 'price': '22,00', 'file': 'Card Produto Quadro.png', 'desc': 'Loop infinito de bom gosto para decorar o seu setup de trabalho.'},
              {'name': 'Copo Vida de Dev', 'price': '28,00', 'file': 'Card Produto Copo.png', 'desc': 'Mantenha sua hidratação em dia entre um commit e outro.'},
              {'name': 'Abridor de garrafa', 'price': '12,00', 'file': 'Card Produto Abridor.png', 'desc': 'A ferramenta definitiva para o happy hour pós-deploy.'},
              {'name': 'Camiseta Estágios', 'price': '35,00', 'file': 'Card Produto Camiseta.png', 'desc': 'As 5 fases do luto, ou melhor, as 5 fases de um bug no código.'},
            ];

        int crossAxisCount = isMobile ? 1 : (isTablet ? 2 : 4);
        double horizontalPadding = isMobile ? 20 : (isTablet ? 40 : 80);
        double aspectRatio = isMobile ? 0.9 : 0.85;

        return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 60),
          child: Column(
            children: [
              Text(
                'Promos especiais',
                style: GoogleFonts.orbitron(
                  fontSize: isMobile ? 24 : 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF090129),
                ),
              ),
              const SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: aspectRatio,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final item = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(
                            name: item['name']!,
                            price: item['price']!,
                            imagePath: 'assets/Imagens/Cards produtos/Cards Home/$deviceFolder/${item['file']}',
                            description: item['desc']!,
                          ),
                        ),
                      );
                    },
                    child: _buildProductCard(
                      item['name']!,
                      item['price']!,
                      item['file']!,
                      deviceFolder,
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
              Align(
                alignment: isMobile ? Alignment.center : Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ver mais',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF9D4EDD),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProductCard(String name, String price, String imageName, String folder) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Image.asset(
                'assets/Imagens/Cards produtos/Cards Home/$folder/$imageName',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.orbitron(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF090129),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "R\$ $price",
                  style: GoogleFonts.orbitron(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF090129),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        bool isMobile = width < 600;
        bool isTablet = width >= 600 && width < 1024;

        double horizontalPadding = isMobile ? 25 : (isTablet ? 60 : 80);
        double verticalPadding = (isMobile || isTablet) ? 60 : 80;

        return Container(
          color: const Color(0xFF80FF00),
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: Column(
            children: [
              Text(
                'Inscreva-se para ganhar descontos!',
                textAlign: TextAlign.center,
                style: GoogleFonts.orbitron(
                  fontSize: isMobile ? 24 : (isTablet ? 28 : 36),
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF090129),
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: isMobile ? 14 : (isTablet ? 16 : 18),
                  color: const Color(0xFF090129),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 48),
              if (isMobile || isTablet)
                Column(
                  children: [
                    _buildInputField(double.infinity, isMobile, isTablet),
                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: isMobile ? 40 : 80),
                      child: _buildButton(double.infinity, isMobile, isTablet),
                    ),
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildInputField(500, false, false),
                    const SizedBox(width: 16),
                    _buildButton(null, false, false),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInputField(double width, bool isMobile, bool isTablet) {
    return SizedBox(
      width: width,
      height: (isMobile || isTablet) ? 54 : 60,
      child: TextField(
        textAlign: isMobile ? TextAlign.center : TextAlign.left,
        style: GoogleFonts.poppins(
          color: const Color(0xFF090129),
          fontSize: (isMobile || isTablet) ? 14 : 16,
        ),
        decoration: InputDecoration(
          hintText: 'Digite seu melhor endereço de email',
          hintStyle: GoogleFonts.poppins(
            color: const Color(0xFF090129).withOpacity(0.6),
            fontSize: (isMobile || isTablet) ? 14 : 16,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          filled: false,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 1.5),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF7B2CBF), width: 2),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(double? width, bool isMobile, bool isTablet) {
    double horizontalPadding = (isMobile || isTablet) ? 0 : 40;

    return Container(
      width: width,
      height: (isMobile || isTablet) ? 54 : 60,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
        color: const Color(0xFF7B2CBF),
        borderRadius: BorderRadius.circular(40),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(40),
        child: Center(
          child: Text(
            'Inscrever',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: (isMobile || isTablet) ? 16 : 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        bool isMobile = width < 600;
        bool isTablet = width >= 600 && width < 1100;

        return Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF090129),
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 25 : 50,
                vertical: 60,
              ),
              child: _buildMainContent(isMobile, isTablet),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xFFEEEEEE),
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'Desenvolvido por Caio Reis. Projeto fictício sem fins comerciais.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xFF090129),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMainContent(bool isMobile, bool isTablet) {
    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset('assets/Logo e favicon/PNG/Logo UseDev Verde.png', height: 50),
                const SizedBox(height: 16),
                Text(
                  'Hora de abraçar seu lado geek!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(color: const Color(0xFF80FF00), fontSize: 16),
                ),
                const SizedBox(height: 24),
                Container(width: 250, height: 1, color: const Color(0xFF80FF00)),
              ],
            ),
          ),
          const SizedBox(height: 48),
          _buildColumn('Funcionamento', ['Segunda a Sexta - 8h às 18h', 'sac@usedev.com.br', '0800 541 320']),
          const SizedBox(height: 40),
          _buildColumn('Institucional', ['Sobre nós', 'Contato', 'Política de Privacidade', 'LGPD']),
          const SizedBox(height: 40),
          _buildColumn('Informações', ['Entregas', 'Garantia', 'Trocas e devoluções']),
          const SizedBox(height: 48),
          _buildPaymentSection(),
          const SizedBox(height: 40),
          _buildSocialSection(),
        ],
      );
    }

    if (isTablet) {
      return Column(
        children: [
          Image.asset('assets/Logo e favicon/PNG/Logo UseDev Verde.png', height: 50),
          const SizedBox(height: 16),
          Text(
            'Hora de abraçar seu lado geek!',
            style: GoogleFonts.poppins(color: const Color(0xFF80FF00), fontSize: 16),
          ),
          const SizedBox(height: 24),
          Container(width: double.infinity, height: 1, color: const Color(0xFF80FF00)),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColumn('Funcionamento', ['Segunda a Sexta - 8h às 18h', 'sac@usedev.com.br', '0800 541 320']),
              _buildColumn('Institucional', ['Sobre nós', 'Contato', 'Política de Privacidade', 'LGPD']),
              _buildColumn('Informações', ['Entregas', 'Garantia', 'Trocas e devoluções']),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPaymentSection(),
              _buildSocialSection(),
            ],
          ),
        ],
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/Logo e favicon/PNG/Logo UseDev Verde.png', height: 50),
                const SizedBox(height: 16),
                Text(
                  'Hora de abraçar seu lado geek!',
                  style: GoogleFonts.poppins(color: const Color(0xFF80FF00), fontSize: 16),
                ),
              ],
            ),
            _buildColumn('Funcionamento', ['Segunda a Sexta - 8h às 18h', 'sac@usedev.com.br', '0800 541 320']),
            _buildColumn('Institucional', ['Sobre nós', 'Contato', 'Política de Privacidade', 'LGPD']),
            _buildColumn('Informações', ['Entregas', 'Garantia', 'Trocas e devoluções']),
          ],
        ),
        const SizedBox(height: 40),
        Container(width: double.infinity, height: 1, color: const Color(0xFF80FF00)),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildPaymentSection(),
            _buildSocialSection(),
          ],
        ),
      ],
    );
  }

  Widget _buildColumn(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 16),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(item, style: GoogleFonts.poppins(color: Colors.white, fontSize: 14)),
        )),
      ],
    );
  }

  Widget _buildPaymentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Formas de Pagamento', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 16),
        Row(
          children: [
            _icon('assets/Ícones/ico-cartao-visa.png'),
            _icon('assets/Ícones/ico-cartao-master.png'),
            _icon('assets/Ícones/ico-cartao-elo.png'),
            _icon('assets/Ícones/ico-cartao-diners.png'),
            _icon('assets/Ícones/ico-pix.png'),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Siga nossas redes:', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 16),
        Row(
          children: [
            _icon('assets/Ícones/Whatsapp.png', size: 32),
            _icon('assets/Ícones/Instragam.png', size: 32),
            _icon('assets/Ícones/Tiktok.png', size: 32),
          ],
        ),
      ],
    );
  }

  Widget _icon(String path, {double size = 24}) => Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Image.asset(path, height: size),
  );
}
