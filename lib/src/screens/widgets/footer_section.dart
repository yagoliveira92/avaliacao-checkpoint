import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF090129),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          // logo e slogan
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Logo_UseDev.png',
                  height: 40,
                  color: const Color(0xFF8FFF24), 
                ),
                const SizedBox(height: 10),
                Text(
                  'Hora de abraçar seu lado geek!',
                  style: GoogleFonts.orbitron(
                    color: const Color(0xFF8FFF24), 
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(color: Color(0xFF8FFF24), thickness: 0.5), // Linha divisória
          ),

          //  blocos de informação 
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //esse comando aqui é o que deixa o espaço no vazio no meio
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _FooterLinkColumn(
                title: 'Funcionamento',
                items: ['Segunda a Sexta -', '8h às 18h', 'sac@usedev.com.br', '0800 541 320'],
              ),
              _FooterLinkColumn(
                title: 'Institucional',
                items: ['Sobre nós', 'Contato', 'Política de Privacidade', 'LGPD - Lei de proteção de dados'],
              ),
            ],
          ),

          const SizedBox(height: 30),

          // formas de pagamento e redes sociais
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Formas de Pagamento',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  
                  Icon(Icons.credit_card, color: Colors.white, size: 20), //botei esse icone ai que foi o unico que eu achei
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Siga nossas redes:',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.camera_alt_outlined, color: Colors.pink[300], size: 24), // simula Instagram
                      const SizedBox(width: 15),
                     const Icon(Icons.chat_bubble_outline, color: Colors.green, size: 24), // simula WhatsApp  (teve que ser assim pq eu não sei onde pega esses icones)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class _FooterLinkColumn extends StatelessWidget {  // este widget começa com _ pois assim ele fica privado nesse arquivo e evita confusão
  final String title;
  final List<String> items;

  const _FooterLinkColumn({required this.title, required this.items}); 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 12),
         
          ...items.map((text) => Padding(   // o 'map' transforma a lista de strings em widgets de texto e os ... servem pra "espalhar os itens da lista dentro da column"
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white70, fontSize: 11),
                ),
              )),
        ],
      ),
    );
  }
}