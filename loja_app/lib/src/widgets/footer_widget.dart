import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF090129),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo_usedev_verde.png', height: 50),
                const SizedBox(height: 15),
                Text(
                  'Hora de abraçar seu lado geek!',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF8FFF24),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),

                // Linha verde com largura definida
                Container(
                  width: 280,
                  height: 1.5,
                  color: const Color(0xFF8FFF24),
                ),
                const SizedBox(height: 30),

                // Bloco de texto com a mesma largura da linha verde
                SizedBox(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Funcionamento',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Segunda a Sexta - 8h às 18h\nsac@usedev.com.br\n0800 541 320',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Institucional',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Sobre nós\nContato\nPolítica de Privacidade\nLGPD - Lei de proteção de dados',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Informações',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Entregas\nGarantia\nTrocas e devoluções',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),

                Text(
                  'Formas de Pagamento',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/ico_cartao_visa.png', height: 25),
                    const SizedBox(width: 12),
                    Image.asset('assets/ico_cartao_master.png', height: 25),
                    const SizedBox(width: 12),
                    Image.asset('assets/ico_cartao_elo.png', height: 25),
                    const SizedBox(width: 12),
                    Image.asset('assets/ico_cartao_diners.png', height: 25),
                    const SizedBox(width: 12),
                    Image.asset('assets/ico_pix.png', height: 25),
                  ],
                ),
                const SizedBox(height: 35),
                Text(
                  'Siga nossas redes:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/ico_whatsapp.png', height: 32),
                    const SizedBox(width: 15),
                    Image.asset('assets/ico_instagram.png', height: 32),
                    const SizedBox(width: 15),
                    Image.asset('assets/ico_tiktok.png', height: 32),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            color: const Color(0xFFF2F2F2),
            child: Text(
              'Desenvolvido por Alura. Projeto fictício sem fins comerciais.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
