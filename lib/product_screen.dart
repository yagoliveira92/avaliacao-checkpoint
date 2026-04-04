    import 'package:flutter/material.dart';
    import 'package:google_fonts/google_fonts.dart';
    import 'home_screen.dart';

    class ProductScreen extends StatefulWidget {
    final String name;
    final String price;
    final String imagePath;
    final String description;

    const ProductScreen({
        super.key,
        required this.name,
        required this.price,
        required this.imagePath,
        required this.description,
    });

    @override
    State<ProductScreen> createState() => _ProductScreenState();
    }

    class _ProductScreenState extends State<ProductScreen> {
    String selectedColor = 'Bege';

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
                    
                    if (!isDesktop) _buildBackButton(),

                    Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 80 : (isTablet ? 40 : 25),
                        vertical: isDesktop ? 60 : 20,
                    ),
                    child: isDesktop 
                        ? _buildDesktopLayout() 
                        : _buildMobileTabletLayout(),
                    ),

                    const FooterSection(),
                ],
                ),
            );
            },
        ),
        );
    }

    Widget _buildBackButton() {
        return Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
            children: [
                const Icon(Icons.arrow_back_ios, size: 16, color: Color(0xFF090129)),
                const SizedBox(width: 8),
                Text(
                'Detalhes do Produto',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF090129),
                ),
                ),
            ],
            ),
        ),
        );
    }

    Widget _buildDesktopLayout() {
        return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Expanded(
            flex: 1,
            child: Image.asset(widget.imagePath, height: 500, fit: BoxFit.contain),
            ),
            const SizedBox(width: 60),
            Expanded(
            flex: 1,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                _buildProductInfo(),
                const SizedBox(height: 40),
                _buildActionButtons(),
                ],
            ),
            ),
        ],
        );
    }

    Widget _buildMobileTabletLayout() {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Center(
            child: Image.asset(widget.imagePath, height: 350, fit: BoxFit.contain),
            ),
            const SizedBox(height: 30),
            _buildProductInfo(),
            const SizedBox(height: 30),
            _buildActionButtons(),
        ],
        );
    }

    Widget _buildProductInfo() {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Expanded(
                child: Text(
                    widget.name,
                    style: GoogleFonts.orbitron(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF090129),
                    ),
                ),
                ),
                Row(
                children: const [
                    Icon(Icons.share_outlined, color: Color(0xFF780BF7), size: 28),
                    SizedBox(width: 15),
                    Icon(Icons.favorite_border, color: Color(0xFF780BF7), size: 28),
                ],
                ),
            ],
            ),
            const SizedBox(height: 15),
            Text(
            widget.description,
            style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF090129)),
            ),
            const SizedBox(height: 15),
            Text(
            'R\$ ${widget.price}',
            style: GoogleFonts.orbitron(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF090129),
            ),
            ),
        ],
        );
    }

    Widget _buildActionButtons() {
        return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
            'Escolha a cor do tecido',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF090129),
            ),
            ),
            _buildColorOption('Bege'),
            _buildColorOption('Branca'),
            _buildColorOption('Cinza'),
            const SizedBox(height: 25),
            _buildDropdown('Quantidade'),
            const SizedBox(height: 15),
            _buildDropdown('Tamanho'),
            const SizedBox(height: 30),
            SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF780BF7),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                elevation: 0,
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                    const SizedBox(width: 12),
                    Text(
                    'Adicionar ao carrinho',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                    ),
                    ),
                ],
                ),
            ),
            ),
        ],
        );
    }

    Widget _buildColorOption(String color) {
        return Row(
        children: [
            Radio<String>(
            value: color,
            groupValue: selectedColor,
            activeColor: const Color(0xFF780BF7),
            onChanged: (value) => setState(() => selectedColor = value!),
            ),
            Text(color, style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF090129))),
        ],
        );
    }

    Widget _buildDropdown(String label) {
        return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF090129)),
            borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(label, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: const Color(0xFF090129))),
            const Icon(Icons.keyboard_arrow_down, color: Color(0xFF090129)),
            ],
        ),
        );
    }
    }