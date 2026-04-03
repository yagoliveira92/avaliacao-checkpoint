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

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: [
          // Header fixo (Menu + Logo + Ícones + Barra de Pesquisa)
          SliverPersistentHeader(
            pinned: true,
            delegate: _HeaderDelegate(
              child: CustomHeader(
                onMenuTap: () => _scaffoldKey.currentState?.openDrawer(),
                onLoginTap: () => _showLoginDialog(),
                onCartTap: () => Navigator.pushNamed(context, '/cart'),
                searchController: _searchController,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
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

  // ==================== MÉTODOS AUXILIARES ====================

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF430091)),
            child: Text(
              'UseDev',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
              _showLoginDialog();
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

// ==================== DELEGATE PARA HEADER FIXO ====================
class _HeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _HeaderDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 132;   // altura aproximada do header + search

  @override
  double get minExtent => 132;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}