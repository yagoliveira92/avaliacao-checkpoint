import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usedev/src/core/theme/colors.dart';
import 'package:usedev/src/widgets/home/custom_header.dart';
import 'package:usedev/src/widgets/home/footer_section.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _couponController = TextEditingController();
  final TextEditingController _shippingController = TextEditingController();

  final List<Map<String, dynamic>> _cartItems = [
    {
      'name': 'Camiseta Capy',
      'description': 'Camiseta 100% algodão.',
      'price': 28.0,
      'quantity': 2,
      'size': 'G',
      'image': 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Capy_Mobile.png',
    },
    {
      'name': 'Camiseta Capy',
      'description': 'Camiseta 100% algodão.',
      'price': 28.0,
      'quantity': 2,
      'size': 'G',
      'image': 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Capy_Mobile.png',
    },
    {
      'name': 'Camiseta Capy',
      'description': 'Camiseta 100% algodão.',
      'price': 28.0,
      'quantity': 2,
      'size': 'G',
      'image': 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Capy_Mobile.png',
    },
  ];

  @override
  void dispose() {
    _searchController.dispose();
    _couponController.dispose();
    _shippingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double subtotal = _cartItems.fold(
      0,
      (sum, item) => sum + (item['price'] * item['quantity']),
    );
    const double shipping = 8.0;
    final double total = subtotal + shipping;

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
              onCartTap: () {},
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

                // Conteúdo
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
                              color: AppColors.categoryTitle,
                              size: 20,
                            ),
                            Text(
                              'Carrinho de Compras',
                              style: GoogleFonts.orbitron(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.categoryTitle, // ✅ #0B254B
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Aviso
                      Container(
                        width: 312,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0x1A19325C), // ✅ #19325C1A
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 16,
                          children: [
                            const Icon(
                              Icons.info_outline,
                              color: AppColors.primaryDark,
                              size: 24,
                            ),
                            Expanded(
                              child: Text(
                                'Atenção, os produtos no carrinho não ficam reservados. Finalize a compra para garantir! :)',
                                style: GoogleFonts.poppins(
                                  fontSize: 20, 
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryDark,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Lista de produtos
                      Text(
                        'Detalhes da compra',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textDark,
                          height: 1.2,
                        ),
                      ),

                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _cartItems.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          final item = _cartItems[index];
                          return _CartItemCard(
                            item: item,
                            onRemove: () {
                              setState(() => _cartItems.removeAt(index));
                            },
                            onQuantityChanged: (qty) {
                              setState(() => _cartItems[index]['quantity'] = qty);
                            },
                          );
                        },
                      ),

                      // Sumário
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 32,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 32,
                          children: [
                            Text(
                              'Sumário',
                              style: GoogleFonts.poppins(
                                fontSize: 16, 
                                fontWeight: FontWeight.w600,
                                color: AppColors.textDark,
                                height: 1.2,
                              ),
                            ),

                            // Cupom
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 8,
                              children: [
                                Text(
                                  'Cupom de desconto',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20, 
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryDark,
                                    height: 1.2,
                                  ),
                                ),
                                Row(
                                  spacing: 8,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 56,
                                        child: TextField(
                                          controller: _couponController,
                                          decoration: InputDecoration(
                                            hintText: 'Digite o cupom',
                                            hintStyle: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: AppColors.categoryDescription,
                                            ),
                                            filled: true,
                                            fillColor: AppColors.backgroundWhite,
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
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 77, 
                                      height: 56,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                        ),
                                        child: Text(
                                          'Ok',
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.textLight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // Frete
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 8,
                              children: [
                                Text(
                                  'Frete',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20, 
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textDark,
                                    height: 1.2,
                                  ),
                                ),
                                Row(
                                  spacing: 8,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 56,
                                        child: TextField(
                                          controller: _shippingController,
                                          decoration: InputDecoration(
                                            hintText: 'Digite o cupom',
                                            hintStyle: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: AppColors.categoryDescription,
                                            ),
                                            filled: true,
                                            fillColor: AppColors.backgroundWhite,
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
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 77,
                                      height: 56,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                        ),
                                        child: Text(
                                          'Ok',
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.textLight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // Divisor
                            const Divider(color: AppColors.primary, thickness: 1),

                            // 03 Produtos
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${_cartItems.length.toString().padLeft(2, '0')} Produtos',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textDark,
                                    height: 1.2,
                                  ),
                                ),
                                Text(
                                  'R\$ ${subtotal.toStringAsFixed(0)}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textDark,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),

                            // Frete valor
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Frete',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textDark,
                                    height: 1.2,
                                  ),
                                ),
                                Text(
                                  'R\$ ${shipping.toStringAsFixed(0)}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textDark,
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),

                            // Divisor roxo
                            const Divider(
                              color: AppColors.primary, // ✅ #780BF7
                              thickness: 1,
                            ),

                            // Total
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  spacing: 8,
                                  children: [
                                    const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: AppColors.primary, // ✅ #780BF7
                                      size: 24,
                                    ),
                                    Text(
                                      'Total:',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.textDark,
                                        height: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'R\$${total.toStringAsFixed(0)}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primary, // ✅ #780BF7
                                    height: 1.2,
                                  ),
                                ),
                              ],
                            ),

                            // Botão Continuar comprando
                            SizedBox(
                              width: 280, 
                              height: 56,
                              child: OutlinedButton(
                                onPressed: () => Navigator.pop(context),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: AppColors.primary, // ✅ #780BF7
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Text(
                                  'Continuar comprando',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primaryDark, 
                                    
                                    height: 1.2,
                                  ),
                                ),
                              ),
                            ),

                            // Botão Ir para pagamento
                            SizedBox(
                              width: 280, 
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary, //
                                  foregroundColor: AppColors.textLight,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Text(
                                  'Ir para pagamento',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textLight,
                                    height: 1.2,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
}

// === COMPONENTE: Card do produto no carrinho ===
class _CartItemCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final VoidCallback onRemove;
  final Function(int) onQuantityChanged;

  const _CartItemCard({
    required this.item,
    required this.onRemove,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 32, 8, 0),
      decoration: BoxDecoration(
        color: AppColors.backgroundLight, // ✅ #EFEFEF
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        spacing: 16,
        children: [
          // Imagem + info
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              // Imagem
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  item['image'],
                  width: 111, 
                  height: 104,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 111,
                      height: 104,
                      color: AppColors.backgroundWhite,
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),

              // Infos
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        item['name'],
                        style: GoogleFonts.orbitron(
                          fontSize: 16, 
                          fontWeight: FontWeight.w700,
                          color: AppColors.textDark, 
                          height: 1.2,
                        ),
                      ),
                      Text(
                        item['description'],
                        style: GoogleFonts.poppins(
                          fontSize: 13, 
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBrown, 
                          height: 1.2,
                        ),
                      ),
                      Text(
                        'R\$ ${item['price'].toStringAsFixed(0)}',
                        style: GoogleFonts.poppins(
                          fontSize: 16, 
                          fontWeight: FontWeight.w600,
                          color: AppColors.textDark, 
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Quantidade + Tamanho + Excluir
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Quantidade
              Container(
                width: 120, 
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryDark),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (item['quantity'] > 1) {
                          onQuantityChanged(item['quantity'] - 1);
                        }
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryDark,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: AppColors.textLight,
                          size: 16,
                        ),
                      ),
                    ),
                    Text(
                      '${item['quantity']}',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => onQuantityChanged(item['quantity'] + 1),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryDark,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.textLight,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Tamanho dropdown
              Container(
                width: 77, 
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
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
                      item['size'],
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
            ],
          ),

          // Excluir
          GestureDetector(
            onTap: onRemove,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Image.asset(
                    'assets/icons/delete_outline (1).png', 
                    width: 24,
                    height: 24,
                  ),
                  Text(
                    'Excluir',
                    style: GoogleFonts.poppins(
                      fontSize: 13, 
                      fontWeight: FontWeight.w600,
                      color: AppColors.textDark,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}