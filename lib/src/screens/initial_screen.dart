import 'package:avaliacao_checkpoint/src/screens/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao_checkpoint/src/screens/widgets/home_banner.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen  extends StatefulWidget {

  const InitialScreen({super.key});

  @override
    State<InitialScreen> createState() => _InitialScreenState();
  }

  class _InitialScreenState extends State<InitialScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //aqui é o widget pra fazer a barra de navegação
        leading: Icon( Icons.menu),
        title: Row(  //a row serve pra deixar os itens alinhados um ao lado do outro
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ // a row não tem um fi só, ela tem uma ruma de fi, por isso tem que botar children
            
            Image.asset(
             'assets/images/Logo_UseDev.png', 
               height: 40,               
             ),
            
            SizedBox(width: 40),
            Text('Sobre nós'),
            SizedBox(width: 60),

            Text('Login'),
          ],
        )
        ,
 centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(80.0), 
       child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adiciona um espaço nas laterais e embaixo
              child: TextField(
                decoration: InputDecoration(
                  
                  hintText: 'O que você procura?',
                  
                  
                  suffixIcon: const Icon(Icons.search, color: Colors.black), // O ícone da lupa no final 
                  
                  
                  filled: true,
                  fillColor: const Color(0xFFEFEFEF), 
                  
                  
                  border: OutlineInputBorder( // Deixa as bordas redondas
                    borderRadius: BorderRadius.circular(30), 
                    borderSide: BorderSide.none, 
                  ),
                  
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                ),
              ),
            ),
                      ),

        actions: [
          Icon( Icons.person_outline), 
          Icon( Icons.shopping_cart_outlined)],
      ),
      body: SingleChildScrollView( //  Permite que a página toda role para baixo
  child: Column(
    children: [
      const HomeBanner(), // o banner que eu fiz
      
      const SizedBox(height: 20), // espaço entre o banner e o título
      
      // 2. Título da Seção
      Text(
        'Promos especiais',
        style: GoogleFonts.orbitron(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF090129),
        ),
      ),

      const SizedBox(height: 10),

      // 3. O seu GridView
      GridView.builder(
        shrinkWrap: true, // isso faz o Grid ocupar só o espaço que precisa
        physics: const NeverScrollableScrollPhysics(), // O scroll sera o da página toda
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 cards por linha
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.00, 
        ),
        itemCount: 6, // Número de produtos
        itemBuilder: (context, index) {
          
          return const ProductCard( // Aqui chama o widget que eu fiz do card
            name: 'Camiseta Capy', 
            price: '28,00', 
            imagePath: 'assets/images/camisa_capivara.png', 
          );
        },
      ),
    ],
  ),
),

);
} 
}