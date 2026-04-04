    import 'package:flutter/material.dart';
    import 'package:google_fonts/google_fonts.dart';
    import 'home_screen.dart';

    class CartScreen extends StatefulWidget {
    const CartScreen({super.key});

    @override
    State<CartScreen> createState() => _CartScreenState();
    }

    class _CartScreenState extends State<CartScreen> {
    final Map<String, int> _quantities = {
        'item1': 2,
        'item2': 2,
        'item3': 2,
    };

    final Map<String, String> _sizes = {
        'item1': 'G',
        'item2': 'G',
        'item3': 'G',
    };

    void _updateQuantity(String itemId, int delta) {
        setState(() {
        int current = _quantities[itemId]!;
        int next = current + delta;
        if (next >= 1) {
            _quantities[itemId] = next;
        }
        });
    }

    void _removeItem(String itemId) {
        setState(() {
        _quantities.remove(itemId);
        _sizes.remove(itemId);
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
            builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth >= 1024;
            bool isTablet = constraints.maxWidth >= 600 && constraints.maxWidth < 1024;

            return SingleChildScrollView(
                child: Column(
                children: [
                    const CustomNavbar(),
                    Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 80 : (isTablet ? 40 : 20),
                        vertical: 20,
                    ),
                    child: Column(
                        children: [
                        _buildHeader(),
                        const SizedBox(height: 30),
                        _buildAlertBanner(),
                        const SizedBox(height: 30),
                        if (isDesktop)
                            Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Expanded(flex: 2, child: _buildCartItemsList()),
                                const SizedBox(width: 40),
                                Expanded(flex: 1, child: _buildSummarySection()),
                            ],
                            )
                        else
                            Column(
                            children: [
                                _buildCartItemsList(),
                                const SizedBox(height: 30),
                                _buildSummarySection(),
                            ],
                            ),
                        ],
                    ),
                    ),
                    const FooterSection(),
                ],
                ),
            );
            },
        ),
        );
    }

    Widget _buildHeader() {
        return InkWell(
        onTap: () => Navigator.pop(context),
        child: Row(
            children: [
            const Icon(Icons.arrow_back_ios, size: 16, color: Color(0xFF090129)),
            const SizedBox(width: 8),
            Text(
                'Detalhes da compra',
                style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF090129),
                ),
            ),
            ],
        ),
        );
    }

    Widget _buildAlertBanner() {
        return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Icon(Icons.info_outline, color: Color(0xFF090129), size: 24),
            const SizedBox(width: 12),
            Expanded(
                child: Text(
                'Atenção, os produtos no carrinho não ficam reservados. Finalize a compra para garantir! :)',
                style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF090129), height: 1.4),
                ),
            ),
            ],
        ),
        );
    }

    Widget _buildCartItemsList() {
        if (_quantities.isEmpty) {
        return Center(
            child: Padding(
            padding: const EdgeInsets.all(40),
            child: Text('Seu carrinho está vazio.', style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey)),
            ),
        );
        }
        return Container(
        color: const Color(0xFFF1F1F1),
        padding: const EdgeInsets.all(25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
                'Detalhes da compra',
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF090129)),
            ),
            const SizedBox(height: 25),
            ..._quantities.keys.map((itemId) => Column(
                    children: [
                    _buildCartItem(itemId),
                    if (_quantities.keys.last != itemId) const Divider(color: Colors.grey, height: 40),
                    ],
                )),
            ],
        ),
        );
    }

    Widget _buildCartItem(String itemId) {
        int quantity = _quantities[itemId]!;
        String selectedSize = _sizes[itemId]!;

        return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset('assets/Imagens/Cards produtos/Cards Home/Mobile/Imagem produto Capy Mobile.png', fit: BoxFit.contain),
            ),
            const SizedBox(width: 20),
            Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Camiseta Capy', style: GoogleFonts.orbitron(fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFF090129))),
                Text('Camiseta 100% algodão.', style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF090129))),
                const SizedBox(height: 8),
                Text('R\$ 28', style: GoogleFonts.orbitron(fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFF090129))),
                const SizedBox(height: 15),
                Row(
                    children: [
                    _buildQtyStepper(itemId, quantity),
                    const Spacer(),
                    _buildSizeDropdown(itemId, selectedSize),
                    ],
                ),
                const SizedBox(height: 15),
                Center(
                    child: InkWell(
                    onTap: () => _removeItem(itemId),
                    child: Column(
                        children: [
                        Text('Excluir', style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF090129))),
                        const Icon(Icons.delete_outline, size: 20, color: Color(0xFF090129)),
                        ],
                    ),
                    ),
                ),
                ],
            ),
            ),
        ],
        );
    }

    Widget _buildQtyStepper(String itemId, int quantity) {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Quantidade:', style: GoogleFonts.poppins(fontSize: 12)),
            const SizedBox(height: 5),
            Container(
            decoration: BoxDecoration(border: Border.all(color: const Color(0xFF090129)), borderRadius: BorderRadius.circular(20)),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                IconButton(onPressed: () => _updateQuantity(itemId, -1), icon: const Icon(Icons.remove, size: 16), constraints: const BoxConstraints()),
                Text('$quantity', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                IconButton(onPressed: () => _updateQuantity(itemId, 1), icon: const Icon(Icons.add, size: 16), constraints: const BoxConstraints()),
                ],
            ),
            ),
        ],
        );
    }

    Widget _buildSizeDropdown(String itemId, String size) {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text('Tamanho:', style: GoogleFonts.poppins(fontSize: 12)),
            const SizedBox(height: 5),
            Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(border: Border.all(color: const Color(0xFF090129)), borderRadius: BorderRadius.circular(20)),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                value: size,
                items: ['P', 'M', 'G', 'GG'].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
                onChanged: (val) => setState(() => _sizes[itemId] = val!),
                ),
            ),
            ),
        ],
        );
    }

    Widget _buildSummarySection() {
        int totalQty = _quantities.values.fold(0, (a, b) => a + b);
        double subtotal = totalQty * 28.0;
        return Container(
        color: const Color(0xFFF1F1F1),
        padding: const EdgeInsets.all(25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Sumário', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            _buildInputGroup('Cupom de desconto'),
            const SizedBox(height: 15),
            _buildInputGroup('Frete'),
            const SizedBox(height: 20),
            const Divider(color: Color(0xFF780BF7)),
            _buildRow('${totalQty.toString().padLeft(2, '0')} Produtos', 'R\$ ${subtotal.toInt()}'),
            _buildRow('Frete', 'R\$ 8'),
            const Divider(color: Color(0xFF780BF7)),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [const Icon(Icons.shopping_bag_outlined, color: Color(0xFF780BF7)), const SizedBox(width: 5), Text('Total:', style: GoogleFonts.orbitron(color: const Color(0xFF780BF7), fontWeight: FontWeight.bold, fontSize: 18))]),
                Text('R\$ ${subtotal.toInt() + 8}', style: GoogleFonts.orbitron(color: const Color(0xFF780BF7), fontWeight: FontWeight.bold, fontSize: 18)),
                ],
            ),
            const SizedBox(height: 25),
            _buildButton('Continuar comprando', isOutlined: true),
            const SizedBox(height: 10),
            _buildButton('Ir para pagamento', isOutlined: false),
            ],
        ),
        );
    }

    Widget _buildInputGroup(String label) {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(label, style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Row(
            children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: 'Digite o código', border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), contentPadding: const EdgeInsets.symmetric(horizontal: 15)))),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF780BF7), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))), child: const Text('Ok', style: TextStyle(color: Colors.white))),
            ],
            ),
        ],
        );
    }

    Widget _buildRow(String label, String value) {
        return Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(label, style: GoogleFonts.poppins()), Text(value, style: GoogleFonts.poppins(fontWeight: FontWeight.bold))]));
    }

    Widget _buildButton(String text, {required bool isOutlined}) {
        return SizedBox(
        width: double.infinity,
        height: 50,
        child: isOutlined
            ? OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFF780BF7)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))), child: Text(text, style: const TextStyle(color: Color(0xFF090129), fontWeight: FontWeight.bold)))
            : ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF780BF7), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))), child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
        );
    }
    }
