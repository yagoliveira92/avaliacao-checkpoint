import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        if (width > 1024) return _buildDesktopHero();
        if (width > 600) return _buildTabletHero();
        return _buildMobileHero();
      },
    );
  }

  Widget _buildMobileHero() {
    return Container(
      width: double.infinity,
      height: 740,
      color: const Color(0xFF0D0221),
      child: Stack(
        children: [
          _buildBackground('assets/images/Banner_Mobile.png', top: 420),
          _buildProductImage('assets/images/camisabanner.png', height: 380, top: 30),
          _buildContent(top: 450, fontSize1: 42, fontSize2: 40),
        ],
      ),
    );
  }

  Widget _buildTabletHero() {
    return Container(
      width: double.infinity,
      height: 740,
      color: const Color(0xFF0D0221),
      child: Stack(
        children: [
          _buildBackground('assets/images/Banner_Tablet.png', top: 420),
          _buildProductImage('assets/images/camisabanner.png', height: 450, top: 50),
          _buildContent(top: 480, fontSize1: 50, fontSize2: 48),
        ],
      ),
    );
  }

  Widget _buildDesktopHero() {
    return Container(
      width: double.infinity,
      height: 600,
      color: const Color(0xFF0D0221),
      child: Stack(
        children: [
          Positioned.fill(
            top: 420,
            child: Image.asset('assets/images/Banner_Desktop.png', fit: BoxFit.cover,),
          ),

          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      'assets/images/camisabanner.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Spacer(flex: 1),
                  Expanded(
                    flex: 3,
                    child: _buildTextAndButton(
                      fontSize1: 52,
                      fontSize2: 50,
                      crossAxis: CrossAxisAlignment.start,
                      textAlign: TextAlign.left,
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


  Widget _buildBackground(String path, {double? top}) {
    return Positioned(
      top: top, left: 0, right: 0, bottom: 0,
      child: Image.asset(path, fit: BoxFit.cover),
    );
  }

  Widget _buildProductImage(String path, {required double height, required double top}) {
    return Positioned(
      top: top, left: 0, right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Image.asset(path, fit: BoxFit.contain, height: height),
      ),
    );
  }

  Widget _buildContent({required double top, required double fontSize1, required double fontSize2}) {
    return Positioned(
      top: top, left: 0, right: 0,
      child: _buildTextAndButton(fontSize1: fontSize1, fontSize2: fontSize2),
    );
  }

  Widget _buildTextAndButton({
    required double fontSize1,
    required double fontSize2,
    CrossAxisAlignment crossAxis = CrossAxisAlignment.center,
    TextAlign textAlign = TextAlign.center,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxis,
      children: [
        Text(
          "Hora de abraçar seu",
          textAlign: textAlign,
          style: TextStyle(
            fontFamily: 'Orbitron', fontSize: fontSize1,
            fontWeight: FontWeight.bold, color: const Color(0xFFFF55DF),
          ),
        ),
        Text(
          "lado geek!",
          textAlign: textAlign,
          style: TextStyle(
            fontFamily: 'Orbitron', fontSize: fontSize2,
            fontWeight: FontWeight.bold, color: const Color(0xFF8FFF24),
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            overlayColor: const Color(0xFF430091),
            backgroundColor: const Color(0xFF780BF7),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            "Ver as novidades!",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}