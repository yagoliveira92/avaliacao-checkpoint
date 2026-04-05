import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';
import 'package:usedev/src/widgets/home/custom_header.dart';
import 'package:usedev/src/widgets/home/footer_section.dart';

class ProductDetailScreen extends StatefulWidget {
  final String productId;

  const ProductDetailScreen({
    super.key,
    required this.productId,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _selectedColor = 'Bege';
  final String _selectedSize = 'G';
  final int _quantity = 1;

  final List<String> _colors = ['Bege', 'Branca', 'Cinza'];
  // ignore: unused_field
  final List<String> _sizes = ['P', 'M', 'G', 'GG'];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.backgroundWhite,
      body: CustomScrollView(
        slivers: [
          // Header fixo
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            toolbarHeight: 150,
            backgroundColor: AppColors.backgroundLight,
            flexibleSpace: CustomHeader(
              onMenuTap: () => _scaffoldKey.currentState?.openDrawer(),
              onLoginTap: () => Navigator.pushNamed(context, '/login'),
              onCartTap: () => Navigator.pushNamed(context, '/cart'),
              searchController: _searchController,
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Banner grid
                Opacity(
                  opacity: 1.0,
                  child: Image.asset(
                    'assets/images/Banner_secoes_Mobile.png',
                    width: double.infinity,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),

                // Conteúdo principal
                Container(
                  color: AppColors.backgroundWhite,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 24,
                    children: [
                      // Breadcrumb
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.chevron_left,
                              color: AppColors.primaryDark,
                              size: 20,
                            ),
                            Text(
                              'Detalhes do Produto',
                              style: GoogleFonts.orbitron(
                                fontSize: 16, 
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryDark,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Imagem do produto
                      ClipRRect(
                        borderRadius: BorderRadius.zero, 
                        child: Image.asset(
                          'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Capy_Mobile.png',
                          width: 312, 
                          height: 293, 
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 312,
                              height: 293,
                              color: AppColors.backgroundLight,
                              child: const Icon(
                                Icons.image_not_supported,
                                size: 50,
                                color: AppColors.categoryDescription,
                              ),
                            );
                          },
                        ),
                      ),

                      // Nome + ícones
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Camiseta Capy',
                            style: GoogleFonts.orbitron(
                              fontSize: 31, // 
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryDark,
                              height: 1.2,
                            ),
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              // substitua pelo caminho do seu asset
                              Image.asset(
                                'assets/icons/compartilhar.png',
                                width: 32,
                                height: 32,
                              ),
                              Image.asset(
                                'assets/icons/favoritar.png',
                                width: 24,
                                height: 24,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Descrição
                      Text(
                        'Camiseta 100% algodão.',
                        style: GoogleFonts.poppins(
                          fontSize: 20, 
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryDark,
                          height: 1.2,
                        ),
                      ),

                      // Preço
                      Text(
                        '28,00',
                        style: GoogleFonts.poppins(
                          fontSize: 31, 
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryDark,
                          height: 1.5,
                        ),
                      ),

                      // Escolha a cor
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Text(
                            'Escolha a cor do tecido',
                            style: GoogleFonts.poppins(
                              fontSize: 20, 
                              fontWeight: FontWeight.w700,
                              color: AppColors.primaryDark,
                              height: 1.2,
                            ),
                          ),
                          ..._colors.map(
                            (color) => GestureDetector(
                              onTap: () => setState(() => _selectedColor = color),
                              child: Row(
                                spacing: 8,
                                children: [
                                  Container(
                                    width: 24, 
                                    height: 24,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _selectedColor == color
                                          ? AppColors.primaryDark
                                          : AppColors.backgroundWhite,
                                      border: Border.all(
                                        color: AppColors.primaryDark,
                                        width: 1, 
                                      ),
                                    ),
                                  ),
                                  Text(
                                    color,
                                    style: GoogleFonts.poppins(
                                      fontSize: 20, 
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryDark,
                                      height: 1.2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Dropdown Quantidade
                      _buildDropdown(
                        label: 'Quantidade',
                        value: _quantity.toString(),
                        onTap: () {},
                      ),

                      // Dropdown Tamanho
                      _buildDropdown(
                        label: 'Tamanho',
                        value: _selectedSize,
                        onTap: () {},
                      ),

                      // Botão Adicionar ao carrinho
                      SizedBox(
                        width: 304, 
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary, // ✅ #780BF7
                            foregroundColor: AppColors.textLight,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
                            children: [
                              const Icon(
                                Icons.add_shopping_cart,
                                color: AppColors.textLight,
                                size: 24,
                              ),
                              Text(
                                'Adicionar ao carrinho',
                                style: GoogleFonts.poppins(
                                  fontSize: 20, 
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textLight,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Footer
                const FooterSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 246, 
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.circular(32), 
          border: Border.all(
            color: AppColors.primaryDark,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryDark,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: AppColors.primaryDark,
              size: 24, 
            ),
          ],
        ),
      ),
    );
  }
}