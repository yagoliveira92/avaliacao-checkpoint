import 'package:flutter/material.dart';

void main() {
  runApp(const LojaOnlineApp());
}

class LojaOnlineApp extends StatelessWidget {
  const LojaOnlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ToBi Import's",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 380,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black12,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                   'assets/images/akatsuki_logo.png',
                    height: 90,
                    width: 120,
                    fit: BoxFit.cover,
  ),
),
                const SizedBox(height: 16),
                const Text(
                  "ToBi Import's",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 113, 2, 2),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Bem-vindo(a)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Faça login para acessar sua coleção',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 24),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Digite seu e-mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Digite sua senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB71C1C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> produtos = [
      {
        'nome': 'Camiseta Akatsuki',
        'preco': 'R\$ 79,90',
        'imagem': 'assets/images/camiseta.png',
      },
      {
        'nome': 'Moletom Tobi',
        'preco': 'R\$ 129,90',
        'imagem': 'assets/images/moletom.png',
      },
      {
        'nome': 'Anel Shinobi',
        'preco': 'R\$ 49,90',
        'imagem': 'assets/images/anel.png',
      },
      {
        'nome': 'Máscara Obito',
        'preco': 'R\$ 99,90',
        'imagem': 'assets/images/mascara.png',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
  backgroundColor: const Color(0xFF121212),
  foregroundColor: Colors.white,
  leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
 title: Row(
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        'assets/images/akatsuki_logo.png',
        height: 28,
        width: 28,
        fit: BoxFit.cover,
      ),
    ),
    const SizedBox(width: 8),
    const Text(
      "ToBi Import's",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
),
  actions: const [
    Padding(
      padding: EdgeInsets.only(right: 16),
      child: Icon(Icons.shopping_cart, color: Colors.white),
    ),
  ],
),
      body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Buscar produtos...',
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Categorias',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF121212),
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CategoryChip(label: 'Roupas'),
              CategoryChip(label: 'Acessórios'),
              CategoryChip(label: 'Colecionáveis'),
              CategoryChip(label: 'Ofertas'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Produtos em destaque',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF121212),
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: produtos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final produto = produtos[index];
            return ProductCard(
              nome: produto['nome']!,
              preco: produto['preco']!,
              imagem: produto['imagem']!,
            );
          },
        ),
        const SizedBox(height: 30),
        const FooterSection(),
      ],
    ),
  ),
),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;

  const CategoryChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFB71C1C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String nome;
  final String preco;
  final String imagem;

  const ProductCard({
    super.key,
    required this.nome,
    required this.preco,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black12,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: Image.asset(
              imagem,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF121212),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  preco,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFFB71C1C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () { 
                      Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(
                       nome: nome,
                       preco: preco,
                       imagem: imagem,
      ),
    ),
  );
},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF121212),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    ),
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
class ProductDetailScreen extends StatelessWidget {
  final String nome;
  final String preco;
  final String imagem;

  const ProductDetailScreen({
    super.key,
    required this.nome,
    required this.preco,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        foregroundColor: Colors.white,
        title: Text(
          nome,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                imagem,
                height: 180,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              nome,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF121212),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              preco,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xFFB71C1C),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Descrição do produto',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Produto inspirado no universo ninja, ideal para fãs da cultura geek e colecionadores.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF444444),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () { 
                  Navigator.push(
                    context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(
                      nome: nome,
                      preco: preco,
                      imagem: imagem,
      ),
    ),
  );
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB71C1C),
                ),
                child: const Text(
                  'Adicionar ao carrinho',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CartScreen extends StatelessWidget {
  final String nome;
  final String preco;
  final String imagem;

  const CartScreen({
    super.key,
    required this.nome,
    required this.preco,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        foregroundColor: Colors.white,
        title: const Text(
          'Carrinho',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image.asset(
                    imagem,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nome,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          preco,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFFB71C1C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Subtotal'),
        Text(preco),
      ],
    ),
    const SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Total',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          preco,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFB71C1C),
          ),
        ),
      ],
    ),
  ],
),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccessScreen(),
    ),
  );
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF121212),
                ),
                child: const Text(
                  'Finalizar compra',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121212),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Inscreva-se para ganhar descontos!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB71C1C),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Cadastre seu email e receba novidades da ToBi Import\'s.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Digite seu e-mail',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFB71C1C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Inscrever',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 24),
          const Divider(color: Colors.white24),
          const SizedBox(height: 12),
          const Text(
            "ToBi Import's",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Hora de abraçar seu lado geek!',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          const Text(
            'Funcionamento\nSegunda a Sexta - 8h às 18h\ncontato@tobiimports.com\n4002 8922',
            style: TextStyle(color: Colors.white70),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                color: Color(0xFFB71C1C),
                size: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Compra finalizada!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF121212),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Seu pedido foi realizado com sucesso.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF444444),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                 onPressed: () {
                   Navigator.pushAndRemoveUntil(
                     context,
                   MaterialPageRoute(
                     builder: (context) => const HomeScreen(),
    ),
    (route) => false,
  );
},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF121212),
                  ),
                  child: const Text(
                    'Voltar para a loja',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}