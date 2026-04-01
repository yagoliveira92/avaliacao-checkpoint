import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'src/tela_inicial.dart'; 


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UseDev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePageCorrida(),
    );
  }
}

class HomePageCorrida extends StatelessWidget {
  const HomePageCorrida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: Text(
          'usedev',
          style: TextStyle(
            fontSize: 24,
            fontFamily: GoogleFonts.orbitron().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, size: 40),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, size: 40),
          ),
        ],
      ),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            InitialScreen(), 
            
          ],
        ),
      ),
    );
  }
}