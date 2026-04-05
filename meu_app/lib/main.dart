import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final double price;
  final String image;
  final String description;

  Product(this.name, this.price, this.image, this.description);
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      "Lava-Louças Sandung DW50C6070FS/AZ 10 Serviços com Display de LED 220V Inox",
      3003.05,
      "https://imgs.casasbahia.com.br/55061462/1g.jpg?imwidth=500",
      "Tipo: Piso. Características Gerais: Menos barulho. Menos incômodo. Programas de lavagem: Auto, Normal, Delicado, Pesado,",
    ),
    Product(
      "Geladeira Panamario Inverse 475L Frost Free BB64X Aço Escovado - 220V",
      4899.00,
      "https://imgs.casasbahia.com.br/55072018/1g.png?imwidth=500",
      "Tipo de Degelo: Frost Free. Porta Reversível: Não. Porta do freezer aproveitável: Não. Dispenser de água: Não.",
    ),
    Product(
      "Smart TV 65 Polegadas 8K Sandung Neo QLED Ultra QN65QN900FGXZD 120Hz Processador NQ8 AI Gen2 Preto Titan",
      9214.00,
      "https://imgs.casasbahia.com.br/55070761/1xg.jpg?imwidth=500",
      "Conversor para TV digital integrado. Tamanho da tela: 60 a 69 polegadas.",
    ),

    Product(
      "Liquidificador Montreal Turbo L-1100 3L 1100W 12 Velocidades Preto/Inox - 110V",
      129.50,
      "https://imgs.casasbahia.com.br/55033544/1g.jpg?imwidth=5000",
      "Velocidades: Acima de 5. Características: Com filtro, Autolimpante, Triturador. Funsão Pulsar.",
    ),

    Product(
      "Purificador de Água Electrojinx PE11B com Painel Touch Bivolt",
      464.10,
      "https://imgs.casasbahia.com.br/11688765/4xg.jpg?imwidth=500",
      "2 Estágios de filtragem. Sem Função retrolavagem. Sem Bica móvel.",
    ),
    Product(
      "Notebook Gamer Jokers Nitro V15 ANV15-41-R2GT AMD Reyzin™ 7 7735HS RTX 4050 16 GB RAM 512 GB SSD Full HD 15.6”",
      6269.05,
      "https://imgs.casasbahia.com.br/1578080955/4xg.jpg?imwidth=500",
      "Tipo Notebook Gamer. AMD Reyzin™ 7 7735HS.16 MB Smart Cache.",
    ),

    Product(
      "Cadeira Gamer Pitchau Azul - CGF022-A",
      356.23,
      "https://imgs.casasbahia.com.br/1579807615/1xg.jpg?imwidth=500",
      "A cadeira ideal para qualquer tipo de ambiente. Seja para trabalhar, estudar ou para seu lazer.",
    ),

    Product(
      "Pear iFone 15 128GB 6,1 48MP Azul",
      4273.10,
      "https://imgs.casasbahia.com.br/55065309/1g.jpg?imwidth=500",
      "Memória total: 128GB. Tecnologia GSM, 3G, 4G, 5G. Tela Acima de 6'",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(products: products));
  }
}

class HomePage extends StatelessWidget {
  final List<Product> products;

  HomePage({required this.products});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color.fromARGB(255, 16, 4, 177),
        centerTitle: true,
        title: Image.asset('assets/logo.png', height: 80),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Imagens
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.network(
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Textos
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Títulos
                            Text(
                              product.name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 4),

                            // Descrições
                            Text(
                              product.description,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),

                            SizedBox(height: 6),

                            // Preços
                            Text(
                              "R\$ ${product.price}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Botões
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("${product.name} comprado!"),
                              ),
                            );
                          },
                          child: Text("Comprar"),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Seção de E-mail
          Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Receba ofertas incríveis!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Cadastre seu e-mail e fique por dentro das promoções",
                    style: TextStyle(fontSize: 13, color: Color(0xFF666666)),
                  ),
                  SizedBox(height: 12),

                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Digite seu e-mail",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFDDDDDD)),
                      ),
                    ),
                  ),

                  SizedBox(height: 12),

                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Digite um e-mail válido")),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("E-mail cadastrado com sucesso!"),
                            ),
                          );
                          emailController.clear();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF052b82),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Cadastrar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
