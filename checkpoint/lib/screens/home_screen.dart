import "package:checkpoint/widgets/banner_homescreen.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 40,
          ),
          title: Image.asset("assets/logo-usedev.png", height: 40),
          centerTitle: true,
          actions: [
            Icon(
              Icons.person_outline_outlined,
              size: 40,
              semanticLabel: "Usuário",
            ),
            SizedBox(width:25),
            Icon(
              Icons.shopping_cart_outlined,
              size: 40,
              semanticLabel: "Carrinho",
            ),
            SizedBox(width:25),
          ]
      ),
      body: SingleChildScrollView(
          child: Column(
        spacing: 20,
        crossAxisAlignment: .stretch,
        children: [
          BannerHomescreen(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "Categorias",
              textAlign: .center,
              style: GoogleFonts.orbitron(
                fontSize: 28,
                fontWeight: .bold,
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              textAlign: .center,
              "De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xFF444444),
                ),
              ),
            ),
        ],
      )
    )
    );
  }
}