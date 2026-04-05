import 'package:flutter/material.dart';
import 'package:use_dev/constants/app_colors.dart';

/// Widget de cabeçalho da aplicação.
///
/// Exibe o menu hamburger, logo da app e ícones de usuário e carrinho.
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, size: 35, color: AppColors.darkNavy),
          Image.asset(
            'assets/Logo UseDev.png',
            height: 50,
          ),
          Row(
            children: [
              Icon(Icons.person_outline, size: 50, color: AppColors.darkNavy),
              const SizedBox(width: 15),
              Icon(
                Icons.shopping_cart_outlined,
                size: 50,
                color: AppColors.darkNavy,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
