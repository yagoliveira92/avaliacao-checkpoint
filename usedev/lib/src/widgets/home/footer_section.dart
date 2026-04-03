import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // === CONTAINER ESCURO ===
        Container(
          width: double.infinity,
          color: AppColors.primaryDark,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            spacing: 32,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // === Logo + Descrição + Separador ===
              Column(
                spacing: 30,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/PNG/Logo_UseDev_Verde.png',
                    width: 80,
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'Hora de abraçar seu lado geek!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.accentGreen,
                      height: 1.2,
                    ),
                  ),
                  Container(
                    width: 280,
                    height: 1.5,
                    color: AppColors.accentGreen,
                  ),
                ],
              ),

              // === Links/informações ===
              Column(
                spacing: 30,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _FooterLinks(
                    title: 'Funcionamento',
                    items: const [
                      'Segunda a Sexta - 8h às 18h',
                      'sac@usedev.com.br',
                      '0800 541 320',
                    ],
                  ),
                  _FooterLinks(
                    title: 'Institucional',
                    items: const [
                      'Sobre nós',
                      'Contato',
                      'Política de Privacidade',
                      'LGPD - Lei de proteção de dados',
                    ],
                  ),
                  _FooterLinks(
                    title: 'Informações',
                    items: const [
                      'Entregas',
                      'Garantia',
                      'Trocas e devoluções',
                    ],
                  ),
                ],
              ),

              // === Formas de Pagamento ===
              Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Formas de Pagamento',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.backgroundLight,
                      height: 1.2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Image.asset('assets/icons/ico-cartao-visa.png', width: 37, height: 24),
                      Image.asset('assets/icons/ico-cartao-master.png', width: 37, height: 24),
                      Image.asset('assets/icons/ico-cartao-elo.png', width: 37, height: 24),
                      Image.asset('assets/icons/ico-cartao-diners.png', width: 37, height: 24),
                      Image.asset('assets/icons/ico-pix.png', width: 37, height: 24),
                    ],
                  ),
                ],
              ),

              // === Siga nossas redes ===
              Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Siga nossas redes:',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.backgroundLight,
                      height: 1.2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Image.asset('assets/icons/Whatsapp.png', width: 32, height: 32),
                      Image.asset('assets/icons/Instagram.png', width: 32, height: 32),
                      Image.asset('assets/icons/Tiktok.png', width: 32, height: 32),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),

        // === FUNDO BRANCO ===
        Container(
          width: double.infinity,
          color: AppColors.backgroundWhite,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Text(
            'Desenvolvido por Alura. Projeto fictício sem fins comerciais.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryDark,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}

// ✅ AQUI ESTÁ A ÚNICA MUDANÇA
class _FooterLinks extends StatelessWidget {
  final String title;
  final List<String> items;

  const _FooterLinks({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240, // ✅ largura do Figma
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // ✅ esquerda
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.backgroundLight,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 16), // gap título → itens

          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 8), // gap entre itens
              child: Text(
                item,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.backgroundLight,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}