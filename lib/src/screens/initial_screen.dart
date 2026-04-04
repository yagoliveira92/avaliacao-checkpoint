import 'package:flutter/material.dart';
import 'package:projeto_usedev/src/widgets/hero_section_widget.dart';
import 'package:projeto_usedev/src/widgets/product_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_usedev/src/data/produtos.dart';
import 'package:projeto_usedev/src/widgets/categories_section_widget.dart';
import 'package:projeto_usedev/src/widgets/banner_widget.dart';
import 'package:projeto_usedev/src/widgets/footer_widget.dart';


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

        title: const Center(
          child: Image(         
            image: AssetImage('assets/logo_usedev.png'),
              height: 40,
            ),
        ),
        
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'O que você procura?',
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[250],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            HeroSection(),

            const SizedBox(height: 20),
              CategoriesSection(),           

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
                  name: produto.name,
                  price: produto.price,
                  image: produto.image,
                );
              },
            ), 
            const BannerWidget(),
            const FooterWidget(),
            ],
          ),
        ),
      );
  }
}