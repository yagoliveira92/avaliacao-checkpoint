import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Container(
          width: double.infinity,
          color: const Color(0xFF090129), // Azul escuro
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Center(
                child: Column(
                  children: [
                    
                     
                    Image.asset(
                      'assets/Logoverde.png', 
                      height: 60, 
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Hora de abraçar seu lado geek!',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xFF8FFF24),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Divider(color: Color(0xFF8FFF24), thickness: 1), 
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              _buildFooterTitle('Funcionamento'),
              _buildFooterText('Segunda a Sexta - 8h às 18h'),
              _buildFooterText('sac@usedev.com.br'),
              _buildFooterText('0800 000 000'),
              const SizedBox(height: 20),

              _buildFooterTitle('Institucional'),
              _buildFooterText('Sobre nós'),
              _buildFooterText('Contato'),
              _buildFooterText('Política de Privacidade'),
              _buildFooterText('LGPD - Lei de proteção de\ndados'),
              const SizedBox(height: 20),

              _buildFooterTitle('Informações'),
              _buildFooterText('Entregas'),
              _buildFooterText('Garantia'),
              _buildFooterText('Trocas e devoluções'),
              const SizedBox(height: 20),

              _buildFooterTitle('Formas de Pagamento'),
              const Row(
                children: [
                  Icon(Icons.credit_card, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Icon(Icons.pix, color: Colors.white, size: 30),
                ],
              ),
              const SizedBox(height: 20),

              _buildFooterTitle('Siga nossas redes:'),
              const Row(
                children: [
                  FaIcon(FontAwesomeIcons.whatsapp, color: Color(0xFFFF55DF), size: 30),
                  SizedBox(width: 15),
                  FaIcon(FontAwesomeIcons.instagram, color: Color(0xFFFF55DF), size: 30),
                  SizedBox(width: 15),
                  FaIcon(FontAwesomeIcons.tiktok, color: Color(0xFFFF55DF), size: 30),
                ],
              ),
            ],
          ),
        ),

        
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(
            'Desenvolvido por Alura. Projeto fictício sem fins\ncomerciais.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }

  // Atalhos para não repetir código
  Widget _buildFooterTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFooterText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 13,
          color: Colors.white70,
        ),
      ),
    );
  }
}