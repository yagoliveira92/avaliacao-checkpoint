import 'package:flutter/material.dart';
import '../sections/navbar.dart';
import '../sections/hero.dart';
import '../sections/categories.dart';
import '../sections/footer.dart';
import '../widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            SearchBarCustom(),
            HeroSection(),
            CategoriesSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}