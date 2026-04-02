import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../shared/app_components.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
    required this.title,
    required this.img,
    required this.description,
    required this.price,
    this.options,
    this.others,
  });

  final String title;
  final String img;
  final String price;
  final String description;
  final Map<String, dynamic>? options;
  final Map<String, dynamic>? others;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final isTablet = width > 600;
        final isDesktop = width > 1024;
        final horizontalPadding = isDesktop ? width * 0.12 : 16.0;

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBackButton(context),

              isDesktop
                  ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: _buildProductImage(isTablet),
                  ),
                  const SizedBox(width: 60),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _buildProductDetails(isTablet),
                    ),
                  ),
                ],
              )
                  : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildProductImage(isTablet),
                  const SizedBox(height: 20),
                  ..._buildProductDetails(isTablet),
                ],
              ),
            ],
          ),
        );
      },
    );
  }


  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_back_ios_sharp, size: 20),
            SizedBox(width: 16),
            Text(
              "Detalhes do Produto",
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> _buildProductDetails(bool isTablet) {
    return [
      isTablet
          ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _buildTitle()),
          const SizedBox(width: 20),
          _buildActionIcons(),
        ],
      )
          : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 20),
          _buildActionIcons(),
        ],
      ),

      const SizedBox(height: 20),

      Text(
        description,
        style: const TextStyle(fontSize: 20, fontFamily: 'Poppins'),
      ),

      const SizedBox(height: 15),

      Text(
        "R\$ $price",
        style: const TextStyle(
          fontSize: 24,
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),

      if (options != null) _buildOptionsSection(isTablet),

      const SizedBox(height: 20),

      _buildSelectors(),

      const SizedBox(height: 40),

      _buildAddToCartButton(),
    ];
  }
  Widget _buildTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 32,
        fontFamily: 'Orbitron',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildActionIcons() {
    return Wrap(
      spacing: 20,
      runSpacing: 10,
      children: [
        SvgPicture.asset('assets/images/compartilhar.svg'),
        SvgPicture.asset('assets/images/favoritar.svg'),
      ],
    );
  }

  Widget _buildProductImage(bool isTablet) {
    return SizedBox(
      height: isTablet ? 450 : 300,
      width: double.infinity,
      child: Image.asset(img, fit: BoxFit.contain),
    );
  }

  Widget _buildOptionsSection(bool isTablet) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        Text(
          options!['optionsLabel'] ?? 'Escolha uma opção',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),

        isTablet
            ? Wrap(
          spacing: 20,
          runSpacing: 10,
          children: _buildChoiceList(),
        )
            : Column(
          children: _buildChoiceList(),
        ),
      ],
    );
  }

  List<Widget> _buildChoiceList() {
    return (options!['choices'] as List<dynamic>).map((choice) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<String>(
            value: choice.toString(),
            groupValue: (options!['choices'] as List)[0].toString(),
            activeColor: Colors.black,
            onChanged: (value) {},
          ),
          Flexible(
            child: Text(
              choice.toString(),
              style: const TextStyle(fontFamily: 'Poppins', fontSize: 18),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 10),
        ],
      );
    }).toList();
  }

  Widget _buildSelectors() {
    return Column(
      children: [
        CustomSelect(
          label: "Quantidade",
          items: List.generate(10, (index) => (index + 1).toString()),
        ),
        if (others != null) ...[
          const SizedBox(height: 20),
          CustomSelect(
            label: others!.keys.first,
            items: (others!.values.first as List).map((e) => e.toString()).toList(),
          ),
        ],
      ],
    );
  }

  Widget _buildAddToCartButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF780BF7),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/images/add_shopping_cart.svg',
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            const SizedBox(width: 14),
            const Text(
              "Adicionar ao carrinho",
              style: TextStyle(fontSize: 22, fontFamily: 'Poppins', fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}