import 'package:flutter/material.dart';
import 'package:flutter_vendas_2/AreaVerde.dart';
import 'package:flutter_vendas_2/categorias_page.dart';
import 'package:flutter_vendas_2/entradaPage.dart';
import 'package:flutter_vendas_2/promosEspeciais.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: const [
          // TOPO DO SITE (Banner e Menu)
          EntradaPage(),

          // SEÇÃO DE CATEGORIAS
          CategoriasPage(),

          // SEÇÃO DE PROMOÇÕES
          PromocoesPage(),

          SizedBox(height: 30),

          // RODAPÉ
          AreaVerde(),
        ],
      ),
    );
  }
}
