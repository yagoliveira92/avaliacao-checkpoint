import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'src.screens/initial_screen.dart'; 
import 'src.screens/card_screen.dart';
import 'src.screens/subscription_screen.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra de Menu = leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('logoUseDev.png', fit: BoxFit.contain)
          ),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'o que você procura?',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
        centerTitle: true,
          actions: [
          TextButton(
            onPressed: () {
              // navegar pra tela de login depois
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_outline, size: 28),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined, size: 28),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            InitialScreen(), 
            ProductListScreen(),
            SubscriptionScreen(),
          ],
        ),
      ),
    );
  }
}