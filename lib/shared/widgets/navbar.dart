import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'searchbar.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        if (width > 1024) return _buildDesktopNavbar();
        if (width > 600) return _buildTabletNavbar();
        return _buildMobileNavbar();
      },
    );
  }

  Widget _buildMobileNavbar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(8, 40, 8, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, size: 32, color: Colors.black)
              ),
              SvgPicture.asset('assets/images/UseDev.svg', height: 40),
              _buildActionIcons(),
            ],
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Searchbar(),
          ),
        ],
      ),
    );
  }
  Widget _buildTabletNavbar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/UseDev.svg', height: 45),
                  const Spacer(),
                  _navLink("Sobre nós"),
                  _navLink("Login"),
                  const SizedBox(width: 10),
                  _buildActionIcons(),
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Searchbar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildDesktopNavbar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1100,
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/UseDev.svg', height: 45),
              const SizedBox(width: 40),
              _navLink("Sobre nós"),

              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Searchbar(),
                ),
              ),

              _navLink("Login"),
              const SizedBox(width: 20),
              _buildActionIcons(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _navLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildActionIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _iconButton('assets/images/Perfil.svg'),
        _iconButton('assets/images/Carrinho.svg'),
      ],
    );
  }

  Widget _iconButton(String asset) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        asset,
        height: 32,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
    );
  }
}