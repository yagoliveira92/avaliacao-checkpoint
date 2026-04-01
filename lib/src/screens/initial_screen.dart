import 'package:flutter/material.dart';
import 'package:projeto_usedev/src/widgets/hero_section_widget.dart';
import 'package:projeto_usedev/src/widgets/product_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_usedev/src/data/produtos.dart';


class InitialScreen extends StatefulWidget{
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon( Icons.menu, size:40),
        title: Image.asset('assets/logo_usedev.png', height:40),
        centerTitle: true,
        actions: const [
          Icon(Icons.person_outline, size: 40),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 40),
          SizedBox(width: 25),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            HeroSection(),
            
            Text(
              'Promos Especiais',
              style: TextStyle(
                fontFamily: GoogleFonts.orbitron().fontFamily,
                fontSize: 27,
                fontWeight: .bold,
                color: Colors.black87,
              ),
              ),
              
            
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: produtos.length,
              itemBuilder: (context, index){
                final produto = produtos[index];

                return ProductCardWidget(
                  name: produto['name']!,
                  price: produto['price']!,
                  image: produto['image']!
                );
              },
            ), 

            ],
          ),
        ),
      );
  }
}