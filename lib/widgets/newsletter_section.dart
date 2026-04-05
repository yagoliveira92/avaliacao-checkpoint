import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:use_dev/constants/app_colors.dart';

/// Widget da seção de newsletter para inscrição de usuários.
///
/// Fornece um campo de entrada para email com opção de inscrição
/// para receber descontos e promocões.
class NewsletterSectionWidget extends StatelessWidget {
  const NewsletterSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      color: AppColors.accentGreen,
      child: Column(
        children: [
          Text(
            'Inscreva-se para ganhar\ndescontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          
          const SizedBox(height: 16),
          
          Text(
            'Cadastre seu email, receba novidades\ne descontos imperdíveis antes de todo\nmundo!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.black,
            ),
          ),
          
          const SizedBox(height: 30),
          
          TextField(
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: 'Digite seu melhor endereço de email',
              hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
              filled: true,
              fillColor: AppColors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: AppColors.darkNavy,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: AppColors.darkNavy,
                  width: 2,
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          
          SizedBox(
            width: 180,
            height: 75,
            child: ElevatedButton(
              onPressed: () {
                // TODO: fazer inscrição funcionando
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purplePrimary,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 0,
              ),
              child: Text(
                'Inscrever',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
