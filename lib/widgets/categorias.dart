import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? price;
  final bool border;

  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.price,
    this.border = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
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
                color: ((border) ? const Color(0xFF0A0222) : Colors.white),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(0)),
              ),
              padding: const EdgeInsets.all(12),
              child: ClipRRect(
                child: Image.asset(imageUrl, fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            ),
            child: Column(
              crossAxisAlignment: (price != null)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: (price != null) ? TextAlign.left : TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Orbitron',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A0222),
                  ),
                ),
                if (price != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    price!,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A0222),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}