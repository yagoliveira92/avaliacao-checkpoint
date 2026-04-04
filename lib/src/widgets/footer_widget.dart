import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget{
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Container (
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: const Color(0xFF090129),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/logo_usedev_verde.png',
                  height: 40,
                  ),
                const SizedBox(height: 5),

                Text(
                  'Hora de abraçar seu lado geek!',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF8FFF24),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Container(
            height: 2,
            color: Color(0xFF8FFF24),
          ),
          const SizedBox(height: 20),

          Text(
            'Funcionamento',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: .bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Segunda a Sexta - 8h às 18h\nsac@usedev.com.br\n0800 541 320',
            style: GoogleFonts.poppins(
              color: Colors.white70,
            ),                     
          ),
           const SizedBox(height: 20),  

           Text(
            'Institucional',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: .bold,
            ),
           ),
           const SizedBox(height: 5),

           Text(
            'Sobre nós\nContato\nPolítica de Privacidade\nLGPD - Lei de proteção de dados',
            style: GoogleFonts.poppins(
              color: Colors.white70,
            ),
           ),
           const SizedBox(height: 20),
          Text(
            'Informações',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: .bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Entregas\nGarantia\nTrocas e devoluções',
            style: GoogleFonts.poppins(
              color: Colors.white70
            ),
          ),
          const SizedBox(height: 20),

          Text(
            'Formas de Pagamento',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: .bold,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/ico_cartao_visa.png', height: 25),
              const SizedBox(width: 10),
              Image.asset('assets/ico_cartao_master.png', height: 25),
              const SizedBox(width: 10),
              Image.asset('assets/ico_cartao_elo.png', height: 25),
              const SizedBox(width: 10),
              Image.asset('assets/ico_cartao_diners.png', height:25),
              const SizedBox(width: 10),
              Image.asset('assets/ico_pix.png', height: 25),
            ],
            ),

          const SizedBox(height: 10),

           Text(
            'Siga nossas redes:',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: .bold,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/whatsapp.png', height: 25),
              const SizedBox(width: 10),
              Image.asset('assets/instagram.png', height: 25),
              const SizedBox(width: 10),
              Image.asset('assets/tiktok.png', height: 25),
            ],
            ),
        ],
      ),
    );
  }
}