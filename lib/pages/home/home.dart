import 'package:alura_usedev_mobile/pages/home/widgets/categories_section.dart';
import 'package:alura_usedev_mobile/shared/widgets/footer.dart';
import 'package:alura_usedev_mobile/pages/home/widgets/hero_section.dart';
import 'package:alura_usedev_mobile/shared/widgets/navbar.dart';
import 'package:alura_usedev_mobile/shared/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Navbar(),
            HeroSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
