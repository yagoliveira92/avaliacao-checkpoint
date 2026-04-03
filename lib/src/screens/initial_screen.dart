import 'package:flutter/material.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/hero_section_widget.dart';
import '../widgets/subscription_section_widget.dart';
class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo_usedev.png',
          height: 40,
        ),
        actions: const [
          Icon(Icons.person_outline, size: 40,),
          SizedBox(width: 10),
          Icon(Icons.shopping_cart_outlined, size: 40,),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSectionWidget(),
            ProductCardWidget.buildList(),
            const SubscriptionSectionWidget(),
          ],
        ),
      ),
    );
  }
}