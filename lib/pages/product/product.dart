import 'package:app/pages/product/widgets/vitrine_promocoes.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/footer.dart';
import '../../shared/widgets/navbar.dart';
import '../../shared/widgets/searchbar.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String img;
  final String price;
  final String description;
  final Map<String, Object>? options;
  final Map<String, List<String>>? others;

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
            Searchbar(),


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
