import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/app_components.dart';

class ProductSection extends StatefulWidget {
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
  final Map<String, Object>? options;
  final Map<String, List<String>>? others;

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {

  String? selectedOption;

  @override
  Widget build(BuildContext context) {

    final options = widget.options;
    final others = widget.others;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20, bottom: 10),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
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
          ),

          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(widget.img, fit: BoxFit.contain),
          ),

          const SizedBox(height: 10),

          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 32,
              fontFamily: 'Orbitron',
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Wrap(
            spacing: 20,
            runSpacing: 10,
            alignment: WrapAlignment.start,
            children: [
              SvgPicture.asset('assets/images/compartilhar.svg'),
              SvgPicture.asset('assets/images/favoritar.svg'),
            ],
          ),

          const SizedBox(height: 20),

          Text(
            widget.description,
            style: const TextStyle(fontSize: 20, fontFamily: 'Poppins'),
          ),

          const SizedBox(height: 15),

          Text(
            "R\$ ${widget.price}",
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          /// OPTIONS
          if (options != null) ...[

            const SizedBox(height: 25),

            Text(
              (options['optionsLabel'] as String?) ?? 'Escolha uma opção',
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Column(
              children: (options['choices'] as List<String>).map((choice) {

                return Row(
                  children: [

                    Radio<String>(
                      value: choice,
                      groupValue: selectedOption,
                      activeColor: Colors.black,
                      fillColor: WidgetStateProperty.all(Colors.black),

                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),

                    Text(
                      choice,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),

                  ],
                );

              }).toList(),
            ),
          ],

          const SizedBox(height: 10),

          CustomSelect(
            label: "Quantidade",
            items: List.generate(10, (index) => (index + 1).toString()),
          ),

          const SizedBox(height: 20),

          /// OTHERS
          if (others != null)
            CustomSelect(
              label: others.keys.first,
              items: others.values.first,
            ),

          const SizedBox(height: 20),

          Center(
            child: ElevatedButton(

              onPressed: () {},

              style: ElevatedButton.styleFrom(
                overlayColor: const Color(0xFF430091),
                backgroundColor: const Color(0xFF780BF7),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  SvgPicture.asset(
                    'assets/images/add_shopping_cart.svg',
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),

                  const SizedBox(width: 14),

                  const Text(
                    "Adicionar ao carrinho",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
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