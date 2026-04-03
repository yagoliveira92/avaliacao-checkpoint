import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';

class NewsletterSection extends StatefulWidget {
  const NewsletterSection({super.key});

  @override
  State<NewsletterSection> createState() => _NewsletterSectionState();
}

class _NewsletterSectionState extends State<NewsletterSection> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      color: AppColors.accentGreen, 
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40), 
      child: Column(
        spacing: 40,
        children: [
          // === TÍTULO ===
          Text(
            'Inscreva-se para ganhar descontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryDark,
              height: 1.2,
            ),
          ),

          // === DESCRIÇÃO ===
          Text(
            'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16, 
              fontWeight: FontWeight.w400,
              color: AppColors.primaryDark,
              height: 1.2,
            ),
          ),

          // === INPUT EMAIL ===
          SizedBox(
            width: 312, 
            height: 56, 
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13, 
                color: AppColors.primaryDark, 
              ),
              decoration: InputDecoration(
                hintText: 'Digite seu melhor endereço de email',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 11, // 
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryDark,
                ),
                filled: true,
                fillColor: Color(0xFF8FFF24),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24, 
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32), 
                  borderSide: const BorderSide(
                    color: AppColors.primaryDark, 
                    width: 2, 
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(
                    color: AppColors.primaryDark,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: const BorderSide(
                    color: AppColors.primaryDark,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),

          // === BOTÃO INSCREVER ===
          SizedBox(
            width: 145, 
            height: 56, 
            child: ElevatedButton(
              onPressed: _handleSubscribe,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary, 
                foregroundColor: AppColors.textLight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24, 
                  vertical: 16, 
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32), 
                ),
                elevation: 0,
              ),
              child: Text(
                'Inscrever',
                style: GoogleFonts.poppins(
                  fontSize: 15, 
                  fontWeight: FontWeight.w700,
                  color: AppColors.textLight, 
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubscribe() {
    if (_emailController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor, digite seu email'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Inscrição realizada com sucesso!'),
        backgroundColor: Colors.green,
      ),
    );
    _emailController.clear();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}