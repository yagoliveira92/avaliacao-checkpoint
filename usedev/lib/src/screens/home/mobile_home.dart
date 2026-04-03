import 'dart:math';

import 'package:flutter/material.dart';
import 'package:usedev/src/data/mock_categories.dart';
import 'package:usedev/src/data/mock_products.dart';
import 'package:usedev/src/widgets/home/custom_header.dart';
import 'package:usedev/src/widgets/home/hero_banner.dart';
import 'package:usedev/src/widgets/home/category_section.dart';
import 'package:usedev/src/widgets/home/category_grid.dart';
import 'package:usedev/src/widgets/home/promo_section.dart';
import 'package:usedev/src/widgets/home/product_highlight_grid.dart';
import 'package:usedev/src/widgets/home/newsletter_section.dart';
import 'package:usedev/src/widgets/home/footer_section.dart';
import 'package:usedev/src/core/constants/routes.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            toolbarHeight: 149,
            backgroundColor: Color(0xFFFFFFFF),
            flexibleSpace: CustomHeader(
              onMenuTap: () => _scaffoldKey.currentState?.openDrawer(),
              onLoginTap: () => _showLoginDialog(),
              onCartTap: () => Navigator.pushNamed(context, '/cart'),
              searchController: _searchController,
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sin(  DateTime.now().millisecondsSinceEpoch / 5000) > 0
                    ? const SizedBox(height: 15)
                    : const SizedBox.shrink(),
                 Center(
                    child: SizedBox(
                      width: 312,
                      height: 439,
                      child: Image.asset(
                        'assets/images/Imagem_hero_mobile.png',
                        fit: BoxFit.cover,
                       ),
                     ),
                  ),
              const HeroBanner(), 
              const CategorySection(),
              CategoryGrid(
                categories: MockCategories.getCategories(),
                onTap: (category) {
                    Navigator.pushNamed(
                      context,
                      '/products',
                      arguments: category.id,
                    );
                  },
                ),
                const PromoSection(),
                ProductHighlightGrid(
                  products: MockPromoProducts.getPromoProducts(),
                  onTap: (product) {
                    Navigator.pushNamed(
                      context,
                      '/product',
                      arguments: product.id,
                    );
                  },
                ),
                const NewsletterSection(),
                const FooterSection(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Início'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Categorias'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favoritos'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AppRoutes.login);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Sobre'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  void _showLoginDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login'),
        content: const Text('Funcionalidade em desenvolvimento'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}