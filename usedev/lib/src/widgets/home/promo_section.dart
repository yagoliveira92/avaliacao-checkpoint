import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundWhite, 
      padding: const EdgeInsets.fromLTRB(16, 24, 89, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Text(
            'Promos Especiais',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(
              fontSize: 25, 
              fontWeight: FontWeight.bold,
              color: AppColors.categoryTitle, 
              height: 1.2, // 
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}