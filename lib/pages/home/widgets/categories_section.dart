import 'package:flutter/material.dart';

import '../../product/product.dart';
import '../../../shared/app_components.dart';
import '../../../shared/products.dart';
class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          double horizontalPadding = 20.0;
          if (width > 1024) {
            horizontalPadding = width * 0.12;
          } else if (width > 600) {
            horizontalPadding = width * 0.05;
          }
          int catColumns = width > 600 ? 2 : 1;
          int promoColumns = 1;
          if (width > 1024) {
            promoColumns = 4;
          } else if (width > 600) {
            promoColumns = 2;
          }

          return Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 40.0),
            child: Column(
              children: [
                _sectionTitle("Categorias"),
                const Padding(

                  padding: EdgeInsets.symmetric(horizontal: 15),

                  child: Text(

                    "De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.",

                    textAlign: TextAlign.center,

                    style: TextStyle(

                      fontFamily: 'Poppins',

                      fontSize: 18,

                      fontWeight: FontWeight.w400,

                      color: Color(0xFF6B6B6B),

                      height: 1.5,

                    ),

                  ),

                ),
                const SizedBox(height: 35),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: catColumns,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: constraints.maxWidth > 600 ? 1.5 : 1.0,
                  children: Products.categories
                      .map((cat) => CategoryCard(
                    imageUrl: cat['img']!,
                    title: cat['title']!,
                    isDark: true,
                    onTap: () {},
                  ))
                      .toList(),
                ),

                const SizedBox(height: 40),
                _sectionTitle("Promos especiais"),
                const SizedBox(height: 20),

                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: promoColumns,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: constraints.maxWidth > 600 ? 0.8 : 1.0,
                  children: Products.promos
                      .map((p) => CategoryCard(

                    imageUrl: p['img'] as String,

                    title: p['title'] as String,

                    price: p['price'] as String,

                    onTap: () {

                      Navigator.push(

                        context,

                        MaterialPageRoute(

                          builder: (context) => ProductPage(

                            title: p['title'] as String,

                            img: p['img'] as String,

                            price: p['price'] as String,

                            description: p['description'] as String,

                            options: p['options'] as Map<String, dynamic>?,

                            others: p['others'] as Map<String, dynamic>?,

                          ),

                        ),

                      );

                    },

                  ),

                  )

                      .toList(),
                ),
          const SizedBox(height: 24),

          GestureDetector(
            onTap: () {},
            child: const Text(
              "Ver mais",
              style: TextStyle(
                color: Color(0xFF780BF7),
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFF780BF7),
                decorationThickness: 2,
              ),
            ),
          ),
          const SizedBox(height: 24),
              ],
            ),
          );
        },
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Orbitron',
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
