import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UseDevColors {
  static const background = Color(0xFF12122A);
  static const navyDark = Color(0xFF0E0E2A);
  static const navy = Color(0xFF1A1A3E);
  static const pink = Color(0xFFFF3EA5);
  static const green = Color(0xFF39FF14);
  static const purple = Color(0xFF7B2FBE);
  static const purpleLight = Color(0xFFAB5CE8);
  static const white = Color(0xFFFFFFFF);
  static const lightGray = Color(0xFFF5F5F5);
  static const darkGray = Color(0xFF888888);
  static const cardBg = Color(0xFFF8F8F8);
  static const footerBg = Color(0xFF12122A);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  int _cartCount = 0;

  final List<Map<String, dynamic>> _categories = [
    {'label': 'Roupas', 'image': 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=600&q=80'},
    {'label': 'Decoração', 'image': 'https://images.unsplash.com/photo-1565299507177-b0ac66763828?w=600&q=80'},
    {'label': 'Canecas', 'image': 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=600&q=80'},
    {'label': 'Acessórios', 'image': 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&q=80'},
  ];

  final List<Map<String, dynamic>> _promos = [
    {'name': 'Camiseta Capy', 'price': '28,00', 'image': 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400&q=80'},
    {'name': 'Mousepad Café', 'price': '18,00', 'image': 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400&q=80'},
    {'name': 'Caneca Bug', 'price': '28,00', 'image': 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=400&q=80'},
    {'name': 'Boné 404', 'price': '25,00', 'image': 'https://images.unsplash.com/photo-1534215754734-18e55d13e346?w=400&q=80'},
    {'name': 'Quadro While', 'price': '22,00', 'image': 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=400&q=80'},
    {'name': 'Copo Vida de Dev', 'price': '28,00', 'image': 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=400&q=80'},
    {'name': 'Abridor de garrafa', 'price': '12,00', 'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400&q=80'},
    {'name': 'Camiseta Estágios', 'price': '35,00', 'image': 'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=400&q=80'},
  ];

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final isMobile = w < 600;
    final isTablet = w >= 600 && w < 900;

    return Scaffold(
      backgroundColor: UseDevColors.lightGray,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildNavBar(isMobile),
            _buildHeroBanner(isMobile),
            _buildCategoriesSection(isMobile, isTablet),
            _buildPromosSection(isMobile, isTablet),
            _buildNewsletterBanner(isMobile),
            _buildFooter(isMobile, isTablet),
            _buildBottomBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBar(bool isMobile) {
    return Container(
      color: UseDevColors.white,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: 12),
      child: isMobile ? _buildMobileNav() : _buildDesktopNav(),
    );
  }

  Widget _buildDesktopNav() {
    return Row(
      children: [
        const _UseDevLogo(),
        const SizedBox(width: 40),
        Text('Sobre nós', style: GoogleFonts.poppins(fontSize: 15, color: UseDevColors.navyDark)),
        const SizedBox(width: 24),
        Expanded(
          child: Container(
            height: 44,
            decoration: BoxDecoration(color: const Color(0xFFF0F0F0), borderRadius: BorderRadius.circular(22)),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'O que você procura?',
                hintStyle: GoogleFonts.poppins(fontSize: 14, color: UseDevColors.darkGray),
                suffixIcon: const Icon(Icons.search, color: UseDevColors.darkGray),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Text('Login', style: GoogleFonts.poppins(fontSize: 15, color: UseDevColors.navyDark)),
        const SizedBox(width: 20),
        const Icon(Icons.person_outline_rounded, color: UseDevColors.navyDark, size: 26),
        const SizedBox(width: 16),
        Stack(
          children: [
            const Icon(Icons.shopping_cart_outlined, color: UseDevColors.navyDark, size: 26),
            if (_cartCount > 0)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(color: UseDevColors.pink, shape: BoxShape.circle),
                  child: Center(child: Text('$_cartCount', style: const TextStyle(color: Colors.white, fontSize: 8))),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileNav() {
    return Row(
      children: [
        const _UseDevLogo(),
        const Spacer(),
        const Icon(Icons.search, color: UseDevColors.navyDark, size: 24),
        const SizedBox(width: 12),
        const Icon(Icons.person_outline_rounded, color: UseDevColors.navyDark, size: 24),
        const SizedBox(width: 12),
        const Icon(Icons.shopping_cart_outlined, color: UseDevColors.navyDark, size: 24),
      ],
    );
  }

  Widget _buildHeroBanner(bool isMobile) {
    return Container(
      height: isMobile ? 320 : 420,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF12122A), Color(0xFF1A1A4E)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          CustomPaint(size: Size.infinite, painter: _GridPainter()),
          Row(
            children: [
              Expanded(
                flex: isMobile ? 5 : 4,
                child: SizedBox.expand(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=600&q=80',
                    fit: BoxFit.cover,
                    color: const Color(0xFF1A1A4E).withOpacity(0.15),
                    colorBlendMode: BlendMode.darken,
                    errorBuilder: (_, __, ___) => Container(
                      color: const Color(0xFF1E1E50),
                      child: const Icon(Icons.image_not_supported, color: Colors.white24, size: 60),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: isMobile ? 5 : 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 48, vertical: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Hora de\nabraçar seu\n',
                              style: GoogleFonts.orbitron(
                                fontSize: isMobile ? 20 : 34,
                                fontWeight: FontWeight.bold,
                                color: UseDevColors.pink,
                                height: 1.25,
                              ),
                            ),
                            TextSpan(
                              text: 'lado geek!',
                              style: GoogleFonts.orbitron(
                                fontSize: isMobile ? 20 : 34,
                                fontWeight: FontWeight.bold,
                                color: UseDevColors.green,
                                height: 1.25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: UseDevColors.purple,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 28, vertical: 14),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          elevation: 0,
                        ),
                        child: Text(
                          'Ver as novidades!',
                          style: GoogleFonts.poppins(fontSize: isMobile ? 13 : 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection(bool isMobile, bool isTablet) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: 48),
      child: Column(
        children: [
          Text(
            'Categorias',
            style: GoogleFonts.orbitron(fontSize: isMobile ? 24 : 32, fontWeight: FontWeight.bold, color: UseDevColors.purple),
          ),
          const SizedBox(height: 12),
          Text(
            'De roupas a gadgets tecnológicos temos tudo para atender suas paixões e hobbies com estilo e autenticidade.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: isMobile ? 13 : 15, color: UseDevColors.navyDark),
          ),
          const SizedBox(height: 32),
          Column(
            children: [
              Row(
                children: [
                  Expanded(child: _buildCategoryCard(_categories[0])),
                  const SizedBox(width: 4),
                  Expanded(child: _buildCategoryCard(_categories[1])),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(child: _buildCategoryCard(_categories[2])),
                  const SizedBox(width: 4),
                  Expanded(child: _buildCategoryCard(_categories[3])),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(Map<String, dynamic> cat) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 220,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              cat['image'] as String,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(color: UseDevColors.navy),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  cat['label'] as String,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(fontSize: 16, fontWeight: FontWeight.bold, color: UseDevColors.navyDark),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromosSection(bool isMobile, bool isTablet) {
    final crossAxisCount = isMobile ? 2 : (isTablet ? 3 : 4);

    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(isMobile ? 16 : 40, 8, isMobile ? 16 : 40, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Promos especiais',
            style: GoogleFonts.orbitron(fontSize: isMobile ? 20 : 26, fontWeight: FontWeight.bold, color: UseDevColors.navyDark),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.75,
            ),
            itemCount: _promos.length,
            itemBuilder: (context, i) => _buildPromoCard(_promos[i]),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Ver mais',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: UseDevColors.purple,
                  decoration: TextDecoration.underline,
                  decorationColor: UseDevColors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPromoCard(Map<String, dynamic> product) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: const Color(0xFFEEEEEE))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: UseDevColors.lightGray,
                child: Image.network(
                  product['image'] as String,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Center(child: Icon(Icons.image_not_supported, color: Colors.black26)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['name'] as String,
                    style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, color: UseDevColors.navyDark),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product['price'] as String,
                    style: GoogleFonts.orbitron(fontSize: 14, fontWeight: FontWeight.bold, color: UseDevColors.navyDark),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsletterBanner(bool isMobile) {
    return Container(
      color: UseDevColors.green,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 24 : 80, vertical: 48),
      child: Column(
        children: [
          Text(
            'Inscreva-se para ganhar descontos!',
            textAlign: TextAlign.center,
            style: GoogleFonts.orbitron(fontSize: isMobile ? 18 : 26, fontWeight: FontWeight.bold, color: UseDevColors.purple),
          ),
          const SizedBox(height: 12),
          Text(
            'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: isMobile ? 13 : 15, color: UseDevColors.purple),
          ),
          const SizedBox(height: 24),
          isMobile
              ? Column(children: [
                  _buildEmailField(),
                  const SizedBox(height: 12),
                  _buildSubscribeButton(fullWidth: true),
                ])
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 420, child: _buildEmailField()),
                    const SizedBox(width: 12),
                    _buildSubscribeButton(fullWidth: false),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: UseDevColors.purple.withOpacity(0.3)),
      ),
      child: TextField(
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'Digite seu melhor endereço de email',
          hintStyle: GoogleFonts.poppins(fontSize: 13, color: UseDevColors.darkGray),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
      ),
    );
  }

  Widget _buildSubscribeButton({required bool fullWidth}) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: UseDevColors.purple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
          padding: const EdgeInsets.symmetric(horizontal: 28),
          elevation: 0,
        ),
        child: Text('Inscrever', style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget _buildFooter(bool isMobile, bool isTablet) {
    return Container(
      color: UseDevColors.footerBg,
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 24 : 60, vertical: 48),
      child: isMobile ? _buildMobileFooter() : _buildDesktopFooter(),
    );
  }

  Widget _buildDesktopFooter() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _UseDevLogo(light: true),
                  const SizedBox(height: 12),
                  Text('Hora de abraçar seu lado geek!', style: GoogleFonts.poppins(color: UseDevColors.green, fontSize: 13)),
                ],
              ),
            ),
            Expanded(flex: 2, child: _buildFooterColumn('Funcionamento', ['Segunda a Sexta - 8h às 18h', 'sac@usedev.com.br', '0800 541 320'])),
            Expanded(flex: 2, child: _buildFooterColumn('Institucional', ['Sobre nós', 'Contato', 'Política de Privacidade', 'LGPD - Lei de proteção de dados'])),
            Expanded(flex: 2, child: _buildFooterColumn('Informações', ['Entregas', 'Garantia', 'Trocas e devoluções'])),
          ],
        ),
        const SizedBox(height: 32),
        Divider(color: Colors.white.withOpacity(0.1), height: 1),
        const SizedBox(height: 24),
        Row(
          children: [
            Text('Formas de Pagamento', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13)),
            const SizedBox(width: 16),
            ..._buildPaymentIcons(),
            const Spacer(),
            Text('Siga nossas redes:', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13)),
            const SizedBox(width: 12),
            ..._buildSocialIcons(),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _UseDevLogo(light: true),
        const SizedBox(height: 8),
        Text('Hora de abraçar seu lado geek!', style: GoogleFonts.poppins(color: UseDevColors.green, fontSize: 12)),
        const SizedBox(height: 24),
        _buildFooterColumn('Funcionamento', ['Segunda a Sexta - 8h às 18h', 'sac@usedev.com.br', '0800 541 320']),
        const SizedBox(height: 20),
        _buildFooterColumn('Institucional', ['Sobre nós', 'Contato', 'Política de Privacidade']),
        const SizedBox(height: 20),
        _buildFooterColumn('Informações', ['Entregas', 'Garantia', 'Trocas e devoluções']),
        const SizedBox(height: 24),
        Divider(color: Colors.white.withOpacity(0.1)),
        const SizedBox(height: 16),
        Text('Formas de Pagamento', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13)),
        const SizedBox(height: 8),
        Wrap(spacing: 8, runSpacing: 8, children: _buildPaymentIcons()),
        const SizedBox(height: 16),
        Text('Siga nossas redes:', style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13)),
        const SizedBox(height: 8),
        Row(children: _buildSocialIcons()),
      ],
    );
  }

  Widget _buildFooterColumn(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14)),
        const SizedBox(height: 12),
        ...items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(item, style: GoogleFonts.poppins(color: Colors.white60, fontSize: 12)),
            )),
      ],
    );
  }

  List<Widget> _buildPaymentIcons() {
    final labels = ['VISA', 'MC', 'ELO', 'DINERS', 'PIX'];
    final colors = [
      const Color(0xFF1A1F71),
      const Color(0xFFEB001B),
      const Color(0xFF00A4E0),
      const Color(0xFF004A97),
      const Color(0xFF32BCAD),
    ];
    return List.generate(
      labels.length,
      (i) => Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(color: colors[i], borderRadius: BorderRadius.circular(4)),
        child: Text(labels[i], style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold)),
      ),
    );
  }

  List<Widget> _buildSocialIcons() {
    return [
      _SocialIcon(icon: Icons.chat_bubble_rounded, color: const Color(0xFF25D366)),
      const SizedBox(width: 8),
      _SocialIcon(icon: Icons.camera_alt_rounded, color: UseDevColors.pink),
      const SizedBox(width: 8),
      _SocialIcon(icon: Icons.music_note_rounded, color: Colors.white70),
    ];
  }

  Widget _buildBottomBar() {
    return Container(
      color: UseDevColors.lightGray,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        'Desenvolvido por CaioXyZ. Projeto fictício sem fins comerciais.',
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(fontSize: 12, color: UseDevColors.darkGray),
      ),
    );
  }
}

class _UseDevLogo extends StatelessWidget {
  final bool light;
  const _UseDevLogo({this.light = false});

  @override
  Widget build(BuildContext context) {
    final color = light ? UseDevColors.green : UseDevColors.navyDark;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'use\n',
            style: GoogleFonts.orbitron(fontSize: 18, fontWeight: FontWeight.bold, color: color, height: 1.1),
          ),
          TextSpan(
            text: 'Dev',
            style: GoogleFonts.orbitron(fontSize: 18, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  const _SocialIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          shape: BoxShape.circle,
          border: Border.all(color: color.withOpacity(0.4)),
        ),
        child: Icon(icon, color: color, size: 18),
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF3333AA).withOpacity(0.25)
      ..strokeWidth = 0.8;

    final horizonY = size.height * 0.55;
    final horizonX = size.width * 0.5;
    const numLines = 14;
    const numHLines = 10;

    for (int i = 0; i <= numHLines; i++) {
      final t = i / numHLines;
      final y = horizonY + (size.height - horizonY) * t;
      final halfW = size.width * 0.5 * t;
      canvas.drawLine(Offset(horizonX - halfW, y), Offset(horizonX + halfW, y), paint);
    }

    for (int i = 0; i <= numLines; i++) {
      final fraction = i / numLines;
      final bottomX = size.width * fraction;
      canvas.drawLine(Offset(horizonX, horizonY), Offset(bottomX, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}