import 'package:avaliacao_checkpoint/src/screens/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        
       colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          ),
      ),
      home: const InitialScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 211, 117, 117),
        elevation: 0,
        // 1. Logo à esquerda
        title: Text(
          "NERD UNIVERSE",
          style: GoogleFonts.orbitron(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        // 2. Ícones à direita
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.black),
            onPressed: () {},
          ),

          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}