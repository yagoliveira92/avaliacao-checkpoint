import 'package:app/shared/app_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildNewsletter(), _buildMainFooter()]);
  }

  Widget _buildNewsletter() {
    return Container(
      width: double.infinity,
      color: const Color(0xFF8FFF24),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          const Text(
            "Inscreva-se para ganhar\ndescontos!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Orbitron',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0D0221),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "Cadastre seu email, receba novidades\ne descontos imperdíveis antes de todo mundo!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0xFF0D0221),
            ),
          ),
          const SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              hintText: "Digite seu melhor endereço de email",
              hintStyle: const TextStyle(color: Colors.black),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Color(0xFF0D0221),
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Color(0xFF780BF7), width: 2),
              ),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              overlayColor: const Color(0xFF430091),
              backgroundColor: const Color(0xFF780BF7),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              "Inscrever",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainFooter() {
    return Container(
      width: double.infinity,
      color: const Color(0xFF0D0221),
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/UseDev_Verde.svg', height: 40),
          const SizedBox(height: 10),
          const Text(
            "Hora de abraçar seu lado geek!",
            style: TextStyle(
              color: Color(0xFF8FFF24),
              fontFamily: 'Poppins',
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 20),
          const Divider(
            color: Color(0xFF8FFF24),
            thickness: 2,
            indent: 60,
            endIndent: 60,
          ),
          const SizedBox(height: 30),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FooterLink(
                title: "Funcionamento",
                content:
                    "Segunda a Sexta - 8h às 18h\nsac@usedev.com.br\n0800 541 320",
              ),
              FooterLink(
                title: "Institucional",
                content:
                    "Sobre nós\nContato\nPolítica de Privacidade\nLGPD - Lei de proteção de dados",
              ),
              FooterLink(
                title: "Informações",
                content: "Entregas\nGarantia\nTrocas e devoluções",
              ),

              const SizedBox(height: 20),
              const Text(
                "Formas de Pagamento",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 15),
              const Wrap(
                spacing: 12,
                runSpacing: 10,
                alignment: WrapAlignment.start,
                children: [
                  PaymentIcon('assets/images/ico-cartao-visa.png'),
                  PaymentIcon('assets/images/ico-cartao-master.png'),
                  PaymentIcon('assets/images/ico-cartao-elo.png'),
                  PaymentIcon('assets/images/ico-cartao-diners.png'),
                  PaymentIcon('assets/images/ico-pix.png'),
                ],
              ),

              const SizedBox(height: 40),

              const Text(
                "Siga nossas redes:",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SocialIcon('assets/images/Whatsapp.png'),
                  SizedBox(width: 25),
                  SocialIcon('assets/images/instagram.png'),
                  SizedBox(width: 25),
                  SocialIcon('assets/images/Tiktok.png'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
