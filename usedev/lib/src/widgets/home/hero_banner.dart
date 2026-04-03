import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';

class HeroBanner extends StatefulWidget {
  const HeroBanner({super.key});

  @override
  State<HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<HeroBanner> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primaryDark,
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      child: Column(
        children: [
          // Área principal do Hero
          Stack(
            children: [
              // Imagem principal (banner)
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  height: 440, // altura ajustada para caber o texto grande
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/Banner_secoes_Mobile.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Overlay escuro na parte inferior
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.85),
                      ],
                    ),
                  ),
                ),
              ),

              // Texto "Hora de abraçar seu lado geek!"
              Positioned(
                bottom: 130,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'Hora de abraçar seu',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.orbitron(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: AppColors.accentPink,        // Rosa neon
                        height: 1.50,
                        letterSpacing: -2.9,
                      ),
                    ),
                    Text(
                      'lado geek!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.orbitron(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: AppColors.accentGreen,       // Verde limão
                        height: 1.50,
                        letterSpacing: -2.9,
                      ),
                    ),
                  ],
                ),
              ),

              // Botão "Ver as novidades!"
              Positioned(
                bottom: 24,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: 268,
                    height: 68,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        elevation: 4,
                      ),
                      child: Text(
                        'Ver as novidades!',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}