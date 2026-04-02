import 'package:flutter/material.dart';

class FooterLink extends StatelessWidget {
  final String title;
  final String content;

  const FooterLink({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentIcon extends StatelessWidget {
  final String path;

  const PaymentIcon(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, height: 25, fit: BoxFit.contain);
  }
}

class SocialIcon extends StatelessWidget {
  final String path;

  const SocialIcon(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: 35,
      color: const Color(0xFFFF55DF),
      fit: BoxFit.contain,
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? price;
  final bool isDark;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
    this.price,
    this.isDark = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF0A0222) : Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Image.asset(imageUrl, fit: BoxFit.contain),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: price != null
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Orbitron',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (price != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      "R\$ $price",
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSelect extends StatelessWidget {
  final String label;

  final List<String> items;

  const CustomSelect({super.key, required this.label, required this.items});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(30),

          border: Border.all(color: Colors.black, width: 1.5),
        ),

        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,

            hint: Text(
              label,

              style: const TextStyle(
                fontFamily: 'Poppins',

                fontWeight: FontWeight.bold,

                fontSize: 18,

                color: Colors.black,
              ),
            ),

            borderRadius: BorderRadius.circular(20),

            dropdownColor: Colors.white,

            icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),

            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,

                child: Text(
                  value,

                  style: const TextStyle(
                    fontFamily: 'Poppins',

                    fontSize: 18,

                    fontWeight: FontWeight.w500,

                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),

            onChanged: (String? newValue) {},
          ),
        ),
      ),
    );
  }
}
