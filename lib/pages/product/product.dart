import 'package:alura_usedev_mobile/pages/product/widgets/product_section.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/footer.dart';
import '../../shared/widgets/navbar.dart';
import '../../shared/widgets/searchbar.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String img;
  final String price;
  final String description;
  final Map<String, dynamic>? options;
  final Map<String, dynamic>? others;

  const ProductPage({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.description,
    this.options,
    this.others,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Navbar(),
            ProductSection(
              title: title,
              img: img,
              price: price,
              description: description,
              options: options,
              others: others,
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
