import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product("Produto 1", 1),
    Product("Produto 2", 2),
    Product("Produto 3", 3),
    Product("Produto 4", 4),
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
      appBar: AppBar(title: Text("Loja Sem Nome")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: products.map((product) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(product.name),
                    subtitle: Text("R\$ ${product.price}"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${product.name} comprado!")),
                        );
                      },
                      child: Text("Comprar"),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Cadastre E-mail pra receber promoções:"),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: "Digite seu email"),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cadastrado!")),
                    );
                  },
                  child: Text("Cadastrar"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
