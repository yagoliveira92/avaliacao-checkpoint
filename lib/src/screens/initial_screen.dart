import 'package:flutter/material.dart';
import 'package:avaliacao_checkpoint/src/screens/widgets/home_banner.dart';

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
                  
                  hintText: 'O que você procura?',// 1. O texto que aparece clarinho
                  hintStyle: const TextStyle(color: Color(0xFF444444)), 
                  
                  
                  suffixIcon: const Icon(Icons.search, color: Colors.black), // O ícone da lupa no final 
                  
                  
                  filled: true, // A cor de fundo cinza clara
                  fillColor: const Color(0xFFEFEFEF), 
                  
                  
                  border: OutlineInputBorder( // Deixando as bordas redondas
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
      body: const Column(
  children: [
    HomeBanner(), // Adicione o banner aqui
    // Outros conteúdos da home virão aqui abaixo
  ],
)
);
}
}