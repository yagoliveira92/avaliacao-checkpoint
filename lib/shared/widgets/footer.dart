import 'package:alura_usedev_mobile/shared/app_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final horizontalPadding = width > 1024
            ? width * 0.12
            : (width > 600 ? width * 0.05 : 20.0);
        final isDesktop = width > 1024;
        final isTablet = width > 600;

        return Column(
          children: [
            _buildNewsletter(isDesktop, isTablet, horizontalPadding),
            _buildMainFooter(isDesktop, isTablet, horizontalPadding),
          ],
        );
      },
    );
  }

  Widget _buildNewsletter(bool isDesktop, bool isTablet, double padding) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF8FFF24),
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: padding),
      child: Column(
        children: [
          Text(
            "Inscreva-se para ganhar descontos!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Orbitron',
              fontSize: isDesktop ? 36 : 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0D0221),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Cadastre seu email, receba novidades e descontos imperdíveis!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: isDesktop ? 18 : 14,
              color: const Color(0xFF0D0221),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: isDesktop
                ? Row(
                    children: [
                      Expanded(child: _buildTextField()),
                      const SizedBox(width: 20),
                      _buildSubscribeButton(isDesktop),
                    ],
                  )
                : Column(
                    children: [
                      _buildTextField(),
                      const SizedBox(height: 15),
                      _buildSubscribeButton(isDesktop),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainFooter(bool isDesktop, bool isTablet, double padding) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF0D0221),
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: padding),
      child: Column(
        children: [
          if (isTablet) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/UseDev_Verde.svg',
                        height: isDesktop ? 50 : 40,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Hora de abraçar seu lado geek!",
                        style: TextStyle(
                          color: const Color(0xFF8FFF24),
                          fontSize: isDesktop ? 16 : 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),

                _footerColumn(
                  "Funcionamento",
                  "Segunda a Sexta - 8h às 18h\nsac@usedev.com.br\n0800 541 320",
                  isDesktop,
                ),

                _footerColumn(
                  "Institucional",
                  "Sobre nós\nContato\nPolítica de Privacidade\nLGPD",
                  isDesktop,
                ),

                _footerColumn(
                  "Informações",
                  "Entregas\nGarantia\nTrocas e devoluções",
                  isDesktop,
                ),
              ],
            ),

            const SizedBox(height: 40),
            const Divider(color: Color(0xFF8FFF24), thickness: 1),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sectionLabel("Formas de Pagamento", isDesktop),
                    const SizedBox(height: 15),
                    _buildPaymentIcons(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _sectionLabel("Siga nossas redes:", isDesktop),
                    const SizedBox(height: 15),
                    _buildSocialIcons(),
                  ],
                ),
              ],
            ),
          ] else ...[
            _buildMobileHeader(),
            const Divider(color: Color(0xFF8FFF24), thickness: 1),
            _buildMobileFooterLinks(),
          ],
        ],
      ),
    );
  }
  Widget _buildMobileHeader() {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/UseDev_Verde.svg',
          height: 40,
        ),
        const SizedBox(height: 10),
        const Text(
          "Hora de abraçar seu lado geek!",
          style: TextStyle(
            color: Color(0xFF8FFF24),
            fontFamily: 'Poppins',
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
  Widget _sectionLabel(String text, bool isDesktop) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: isDesktop ? 18 : 16,
      ),
    );
  }

  Widget _buildPaymentIcons() {
    return const Wrap(
      spacing: 12,
      children: [
        PaymentIcon('assets/images/ico-cartao-visa.png'),

        PaymentIcon('assets/images/ico-cartao-master.png'),

        PaymentIcon('assets/images/ico-cartao-elo.png'),

        PaymentIcon('assets/images/ico-cartao-diners.png'),

        PaymentIcon('assets/images/ico-pix.png'),
      ],
    );
  }

  Widget _buildSocialIcons() {
    return const Row(
      children: [
        SocialIcon('assets/images/Whatsapp.png'),
        SocialIcon('assets/images/instagram.png'),
        SocialIcon('assets/images/Tiktok.png'),
      ],
    );
  }

  Widget _buildTextField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Digite seu melhor endereço de email",

        hintStyle: const TextStyle(color: Colors.black),

        filled: true,

        fillColor: Colors.transparent,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,

          vertical: 15,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),

          borderSide: const BorderSide(color: Color(0xFF0D0221), width: 1.5),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),

          borderSide: BorderSide(color: Color(0xFF780BF7), width: 2),
        ),
      ),
    );
  }

  Widget _buildSubscribeButton(bool isDesktop) {
    return ElevatedButton(
      onPressed: () {},

      style: ElevatedButton.styleFrom(
        overlayColor: const Color(0xFF430091),

        backgroundColor: const Color(0xFF780BF7),

        foregroundColor: Colors.white,

        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),

      child: const Text(
        "Inscrever",

        style: TextStyle(
          fontFamily: 'Poppins',

          fontWeight: FontWeight.bold,

          fontSize: 18,
        ),
      ),
    );
  }

  Widget _footerColumn(String title, String content, bool isDesktop) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: isDesktop ? 18 : 16,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            content,
            style: TextStyle(
              color: Colors.white70,
              fontSize: isDesktop ? 16 : 14,
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileFooterLinks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FooterLink(
          title: "Funcionamento",
          content:
              "Segunda a Sexta - 8h às 18h\nsac@usedev.com.br\n0800 541 320",
        ),
        FooterLink(
          title: "Institucional",
          content:
              "Sobre nós\nContato\nPolítica de Privacidade\nLGPD - Lei de proteção de dados",
        ),
        FooterLink(
          title: "Informações",
          content: "Entregas\nGarantia\nTrocas e devoluções",
        ),

        const SizedBox(height: 20),
        const Text(
          "Formas de Pagamento",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 15),
        const Wrap(
          spacing: 12,
          runSpacing: 10,
          alignment: WrapAlignment.start,
          children: [
            PaymentIcon('assets/images/ico-cartao-visa.png'),
            PaymentIcon('assets/images/ico-cartao-master.png'),
            PaymentIcon('assets/images/ico-cartao-elo.png'),
            PaymentIcon('assets/images/ico-cartao-diners.png'),
            PaymentIcon('assets/images/ico-pix.png'),
          ],
        ),

        const SizedBox(height: 40),

        const Text(
          "Siga nossas redes:",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SocialIcon('assets/images/Whatsapp.png'),
            SizedBox(width: 25),
            SocialIcon('assets/images/instagram.png'),
            SizedBox(width: 25),
            SocialIcon('assets/images/Tiktok.png'),
          ],
        ),
      ],
    );
  }
}
