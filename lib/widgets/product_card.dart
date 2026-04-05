import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:use_dev/constants/app_colors.dart';

/// Widget que exibe um card de produto com imagem, título e preço.
///
/// Recebe três parâmetros obrigatórios:
/// - [imagemPath]: caminho da imagem do produto
/// - [titulo]: nome/título do produto
/// - [preco]: preço do produto
class ProductCardWidget extends StatelessWidget {
  final String imagemPath;
  final String titulo;
  final String preco;

  const ProductCardWidget({
    super.key,
    required this.imagemPath,
    required this.titulo,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: AppColors.accentPink.withValues(alpha: 0.05),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(imagemPath, height: 400, fit: BoxFit.contain),
          
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            decoration: const BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                
                const SizedBox(height: 8),
                
                Text(
                  'R\$ $preco',
                  style: GoogleFonts.orbitron(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.purplePrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
