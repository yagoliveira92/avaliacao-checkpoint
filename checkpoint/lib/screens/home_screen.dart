import "package:checkpoint/sections/category_section_widget.dart";
import "package:checkpoint/sections/products_section_widget.dart";
import "package:checkpoint/widgets/banner_homescreen_widget.dart";
import "package:checkpoint/sections/subscription_section_widget.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: AppBar(
            leading: Icon(Icons.menu, size: 40),
            title: Image.asset("assets/logo-usedev.png", height: 50),
            centerTitle: true,
            actions: [
              Icon(Icons.person_outline_outlined, size: 40),
              Icon(Icons.shopping_cart_outlined, size: 40),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            BannerHomescreen(),
            const SizedBox(height: 20),
            CategorySectionWidget(),
            ProductsSectionWidget(),
            SubscriptionSectionWidget(),
          ],
        ),
      ),
    );
  }
}
